class Player

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def receive_damage blow_size
    @hitpoints -= blow_size
  end

end
