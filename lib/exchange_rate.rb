require('./app/models/cube')

class ExchangeRate
  def self.at(time, base_currency, counter_currency)
    ::Cube.where(counter_currency: counter_currency, base_currency: base_currency)
          .where('DATE(time) = ?', time)
          .first
  end
end
