require('./lib/data_source/service')
require('./app/models/cube')
require('./app/connection')

module DataSource
  module Importer
    class Cube
      def self.import
        ::Connection.open_connection
        DataSource::Service.cubes.each do |cube|
          p "TIME: #{cube.time} - CURRENCY: #{cube.currency} - RATE: #{cube.rate}"
          ::Cube.find_or_create_by(
            time:             cube.time,
            base_currency:    'EUR',
            counter_currency: cube.currency,
            rate:             cube.rate
          )
        end
      end
    end
  end
end
