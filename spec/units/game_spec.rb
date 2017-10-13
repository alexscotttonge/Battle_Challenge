require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1, :receive_damage => true) }
  let(:player2) { double(:player2) }
  let(:blow_size) { 3 }
  describe '#attack' do
    it 'calls receive_damage on the player passed to it' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1, blow_size)
    end
  end

  describe '#initialize' do
    it 'starts with two player instances' do
      expect(game.player2).to receive(:receive_damage)
      game.player2.receive_damage
    end
  end

end
