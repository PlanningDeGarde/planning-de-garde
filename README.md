# Planning de garde

Planning de garde is a ruby client for [Planning de garde](https://www.planning-de-garde.fr/) JSON API ([documentation](http://developers.planning-de-garde.fr/)).

## Installation

Add this line to your application's Gemfile:

    gem 'planning-de-garde'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install planning-de-garde

## Usage

### Configuration

Planning de garde can be configured (ideally inside an initializer) by
calling `PlanningDeGarde.configure like so:

    PlanningDeGarde.configure do |config|
        config.app_id     = ENV['PLANNING_DE_GARDE_APP_ID']
        config.app_secret = ENV['PLANNING_DE_GARDE_APP_SECRET']
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The MIT License (MIT)

Copyright (c) 2015-2016 Honestica

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
