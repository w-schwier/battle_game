class Player

STARTING_HP = 100

attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def take_damage
    @hp -= 10
  end
end
