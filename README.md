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

or

via demo:
http://abd07c33744d511e8830a020fc88053e-1829837008.us-west-1.elb.amazonaws.com/fx/2/USD

which:
2 = amount you want to convert and
USD = counter currency

So far, we have only base currency 'Euros'

### Tests
To run the tests:
```shell
bundle exec rspec
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
