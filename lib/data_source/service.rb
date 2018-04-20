require('net/http')
require('./lib/data_source/parser/cube')

module DataSource
  class Service
    def self.make_request
      uri = URI("https://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml?c3bca22bbcaef5f329094235e42c3904")
      Net::HTTP.get(uri)
    end

    def self.cubes
      DataSource::Parser::Cube.parse(make_request)
    end
  end
end
