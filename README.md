# Exchange Rate

## Usage

Params:
1. Date of the currency
2. Base Currency
3. Counter Currency

for example:

```ruby

  ExchangeRate.at(Date.today, 'EUR', 'NOK')  
```


### Tests
To run the tests:
```shell
bundle exec rspec
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
