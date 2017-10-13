class Player

  attr_reader :name, :hitpoints

  def initialize name
    @name = name
    @hitpoints = 100
  end

  def attack
    @hitpoints -= 10
  end

end
