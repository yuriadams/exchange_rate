require "spec_helper"

RSpec.describe ExchangeRate do
  before do

  end

  context 'when there\'s base currency values' do
    it 'returns currency for that day' do
      current = ExchangeRate.at(Date.new(2018, 3, 1), 'EUR', 'NOK')
      expect(current.rate).to eq('9.66')
    end
  end

  context 'when there\'s base currency values' do
    it 'returns nil' do
      current = ExchangeRate.at(Date.new(2018, 3, 1), 'USD', 'NOK')
      expect(current).to be_nil
    end
  end
end
