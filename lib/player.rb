class Player

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def receive_damage
    @hitpoints -= 10
  end

end
