class MoveWorker
  include Sidekiq::Worker

  def perform(params)
    # TODO: Step 0, move to sidekiq
    move = Move.new({
      move: params["move"],
      player: Player.find(params["player_id"]),
    })
    move.make!
  end
end
