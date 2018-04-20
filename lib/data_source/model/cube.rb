module DataSource
  module Model
    class Cube
      attr_reader :time, :currency, :rate
      
      def initialize(time, currency, rate)
        @time     = time
        @currency = currency
        @rate     = rate
      end
    end
  end
end
