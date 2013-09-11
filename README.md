# ProfilerRails

A Profiler for your Rails application, based on ruby-prof that supports flat, graph and stack output

## Installation

Add this line to your application's Gemfile:

    gem 'profiler_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install profiler_rails

## Usage

Profiler::prof("import") do
  # your code block to profiling performance
end

## Output
Graph, Flat and Stack html formatted output on the /tmp/performance folder.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request