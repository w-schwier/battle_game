class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def switch_players
    players.reverse!
  end

  def attack(player)
    player.take_damage
  end
end
