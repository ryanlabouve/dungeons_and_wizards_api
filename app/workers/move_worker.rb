class MoveWorker
  include Sidekiq::Worker

  def perform(params)
    params = ActiveSupport::HashWithIndifferentAccess.new(params)

    move = Move.new({
      player: Player.find(params[:player_id]),
      move: params[:move]
    })

    move.make!
  end
end
