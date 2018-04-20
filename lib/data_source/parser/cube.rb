require('nokogiri')
require('./lib/data_source/model/cube')

module DataSource
  module Parser
    class Cube
      def self.parse(xml)
        doc = Nokogiri(xml)
        days_nodes = (doc/'Cube').select{|c| !c.attributes['time'].nil? }
        days_nodes.map do |day|
          day.children.map do |cube|
            DataSource::Model::Cube.new(
              day.attributes['time'].value,
              cube.attributes['currency'].value,
              cube.attributes['rate'].value
            )
          end
        end.flatten
      end
    end
  end
end
