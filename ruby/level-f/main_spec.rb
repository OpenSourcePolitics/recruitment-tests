require_relative 'main'
require 'rspec'

RSpec.describe 'Test' do
  context 'when #rot13 method is called' do
    it 'returns result' do
      t = Test.new
      expect(t.rot13('Claude Elwood Shannon')).to eq('Pynhqr Ryjbbq Funaaba')
      expect(t.rot13('Alan Turing')).to eq('Nyna Ghevat')
      expect(t.rot13('Ada Lovelace')).to eq('Nqn Ybirynpr')
      expect(t.rot13('Grace Hopper')).to eq('Tenpr Ubccre')
      expect(t.rot13('Margaret Hamilton')).to eq('Znetnerg Unzvygba')
    end
  end
end
