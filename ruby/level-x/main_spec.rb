require_relative 'main'
require 'rspec'

RSpec.describe 'Test' do
  context 'when #output method is called' do
    it 'returns result' do
      test = Test.new
      expect(test.output).to eq(
        "rentals": [
          {
            "id": 1,
            "price": 7000
          },
          {
            "id": 2,
            "price": 15_500
          },
          {
            "id": 3,
            "price": 11_250
          }
        ]
      )
    end
  end
end
