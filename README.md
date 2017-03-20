# timeout

Timeout implementation for Crystal.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  timeout:
    github: andrius/timeout
```

## Usage

```crystal
require "timeout"
```

Sample:
```
res = Timeout.timeout(0.1) do
  puts "this line will be printed"
  sleep 0.2
  puts "this line won't be printed"
end

# will print false
puts "Result: #{res}"
```

## Contributing

1. Fork it ( https://github.com/andrius/timeout/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [andrius](https://github.com/andrius) Andrius Kairiukstis - creator, maintainer
