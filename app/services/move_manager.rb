class MoveManager
  def make(params)
    if is_long_move?(params[:move])
      make_long_move(params)
    else
      make_short_move(params)
    end
  end

  private

  def is_long_move?(move)
    move["queue_time"] > 4 ? true : false
  end

  def make_long_move(params)
    LongMoveWorker.perform_async({
      player_id: params[:player_id],
      move: params[:move]
    })
  end

  def make_short_move(params)
    ShortMoveWorker.perform_async({
      player_id: params[:player_id],
      move: params[:move]
    })
  end
end
