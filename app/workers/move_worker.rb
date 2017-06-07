class MoveWorker
  include Sidekiq::Worker

  def perform(params)
    move = Move.new({
      move: params["move"],
      player: Player.find(params["player_id"]),
    })
    move.make!
  end
end
