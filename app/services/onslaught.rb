require 'net/http'

# Makes a random move from a random player
# via the BattleController (i.e. over the network)
class Onslaught
  def initialize
    offset = rand(Player.count)
    rando_player = Player.offset(offset).first
    player_move = rando_player.moves.sample

    uri = URI('http://localhost:3000/move')
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req.body = {
      player_id: rando_player.id,
      move: player_move,
    }.to_json
    res = http.request(req)

    mark = JSON.parse(res.body)["success"] ? "✔" : "✕"

    puts "#{mark} (#{player_move['queue_time']}s) #{rando_player.name} attempts #{player_move['name']} and is successful"
  end
end
