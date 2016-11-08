class Player

  DEFAULT_HIT_POINTS = 20
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = 20
  end

  def attack(player)
    player.take_damage
  end

  def take_damage
    @hp -= 1
  end
end
