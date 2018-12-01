require_relative 'main'
require 'rspec'

RSpec.describe 'Test' do
  context 'when #fibo method is called' do
    it 'returns result' do
      t = Test.new
      expect(t.fibo(0)).to eq(0)
      expect(t.fibo(1)).to eq(1)
      expect(t.fibo(2)).to eq(1)
      expect(t.fibo(3)).to eq(2)
      expect(t.fibo(4)).to eq(3)
      expect(t.fibo(5)).to eq(5)
      expect(t.fibo(6)).to eq(8)
      expect(t.fibo(7)).to eq(13)
      expect(t.fibo(8)).to eq(21)
      expect(t.fibo(9)).to eq(34)
      expect(t.fibo(10)).to eq(55)
      expect(t.fibo(11)).to eq(89)
      expect(t.fibo(12)).to eq(144)
      expect(t.fibo(13)).to eq(233)
      expect(t.fibo(14)).to eq(377)
      expect(t.fibo(15)).to eq(610)
      expect(t.fibo(16)).to eq(987)
    end
  end
end
