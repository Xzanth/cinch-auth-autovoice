require "cinch"

module Cinch
  module Plugins
    # Cinch plugin to automatically voice all authed users
    class AuthAutovoice
      include Cinch::Plugin

      listen_to :join

      def listen(m)
        channel = m.channel
        user = m.user
        return unless config[:channels].include?(channel.name)
        unless channel.opped?(bot)
          Timer(5, shots: 1) { listen(m) } if config[:wait_until_opped]
          return
        end
        if user.nick == bot.nick
          channel.users.each { |u, _k| voice_if_authed(u, channel) }
          Timer(30, shots: 1) { listen(m) } if config[:check_periodically]
        end
        voice_if_authed(user, channel)
      end

      def voice_if_authed(user, channel)
        return if user.nick == bot.nick
        return if channel.opped?(user) || channel.voiced?(user)
        return unless channel.opped?(bot)
        return unless user.authed?
        channel.voice(user)
      end
    end
  end
end
