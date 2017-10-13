require 'player'

describe Player do
  subject(:player) { described_class.new 'Alex' }
  describe '#initialize' do
    it 'gives a player a name' do
      expect(player.name).to eq 'Alex'
    end
  end
end
