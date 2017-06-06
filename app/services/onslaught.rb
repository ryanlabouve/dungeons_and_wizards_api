class Onslaught
  def initialize
    offset = rand(Player.count)
    rando_player = Player.offset(offset).first
    move = rando_player.moves.sample
    battle = Battle.last

    move = Move.new({
      player: rando_player,
      move: move,
      battle: battle,
    })
    move.make!
  end
end
