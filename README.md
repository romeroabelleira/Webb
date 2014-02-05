# Webb

Webb discovers active HTTP servers within a provided range and opens the addresses in Safari.
Named after the space telescope named after James E. Webb.

Powered by cedras GmbH, Winterthur, Switzerland.

## Installation

Add this line to your application's Gemfile:

    gem 'webb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webb

## Usage

    $ webb scan 172.16.0.0
    
    $ webb sweep 172.16.0.0 172.18.255.255

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
