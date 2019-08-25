require_relative 'main'
require 'rspec'

RSpec.describe 'Test' do
  context 'when #smallest_or_highest method is called' do
    it 'returns result' do
      t = Test.new
      expect(t.smallest_or_highest([34, 15, 88, 2], 'min')).to eq(2)
      expect(t.smallest_or_highest([34, -345, -1, 100], 'min')).to eq(-345)
      expect(t.smallest_or_highest([34, 15, 88, 2], 'max')).to eq(88)
      expect(t.smallest_or_highest([34, -345, -1, 100], 'max')).to eq(100)
      expect(t.smallest_or_highest([34, 15, 88, 2], 'anything else')).to eq([34, 15, 88, 2])
      expect(t.smallest_or_highest([34, -345, -1, 100], 'anything else')).to eq([34, -345, -1, 100])
      expect(t.smallest_or_highest([12, 34, -12, -1000], 'min')).to eq(-1000)
      expect(t.smallest_or_highest([348, -3, -112, 100], 'min')).to eq(-112)
      expect(t.smallest_or_highest([134, 145, -88, -2], 'max')).to eq(145)
      expect(t.smallest_or_highest([134, -45, -2, 10], 'max')).to eq(134)
      expect(t.smallest_or_highest([3, 5, -8, 22], '')).to eq([3, 5, -8, 22])
      expect(t.smallest_or_highest([31, -45, 0, 1024], '')).to eq([31, -45, 0, 1024])
    end
  end
end
