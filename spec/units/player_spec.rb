require 'player'

describe Player do
  subject(:player1) { described_class.new 'Alex' }
  subject(:player2) { described_class.new 'Ed' }
  describe '#initialize' do
    it 'gives a player a name' do
      expect(player1.name).to eq 'Alex'
    end
  end
  describe '#receive_damage' do
    it 'reduces the number of hitpoints by 10' do
      expect { player2.receive_damage }.to change { player2.hitpoints }.by(-10)
    end
  end
end
