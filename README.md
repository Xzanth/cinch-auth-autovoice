# Cinch Auth Autovoice Plugin
[![GitHub](https://img.shields.io/badge/github-Xzanth/cinch--auth--autovoice-blue.svg)](http://github.com/Xzanth/cinch-auth-autovoice)
[![License](https://img.shields.io/badge/license-GPLv3-blue.svg)](#license)
[![Dependency Status](https://img.shields.io/gemnasium/Xzanth/cinch-auth-autovoice.svg)](https://gemnasium.com/Xzanth/cinch-auth-autovoice)
[![Gem Version](https://badge.fury.io/rb/cinch-auth-autovoice.svg)](https://badge.fury.io/rb/cinch-auth-autovoice)  
Plugin that automatically voices all authed users in specified channels.

## Usage
install the gem in your application's Gemfile:

    gem 'cinch-auth-autovoice'

then alter your bot's config to include the following:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ruby
require 'cinch/plugins/integration'

bot = Cinch::Bot.new do
  configure do |c|
    c.plugins.plugins = [Cinch::Plugins::AuthAutovoice]
    c.plugins.options[Cinch::Plugins::AuthAutovoice] = {
      channels:           ["#channel_list"],
      wait_until_opped:   true,
      check_periodically: true
    }
  end
end
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| Option  | Description |
| ------------- | ------------- |
| `channels`  | A list of channel names the bot should autovoice in |
| `wait_until_opped`  | If not opped immediately upon joining channel, retry every 5 seconds |
| `check_periodically` | Check every 30s in case someone has authed after already joining |

## License
Copyright (C) 2016 Jonas Osborn

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
