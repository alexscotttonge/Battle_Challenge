
class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack player, blow_size
    player.receive_damage(blow_size)
  end
end
