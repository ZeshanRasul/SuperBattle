class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(defending_player)
    defending_player.take_damage
  end
end
