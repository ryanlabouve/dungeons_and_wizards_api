class RiskyMoveManager
  def make(params)
    long = is_long_move?(params[:move])
    risky = is_risky_move?(params[:move])

    if long
      make_long_move(params) if !risky
      make_risky_long_move(params) if risky
    else
      make_short_move(params) if !risky
      make_risky_short_move(params) if risky
    end
  end

  private

  def is_risky_move?(move)
    move["success_rate"] < 0.8 ? true : false
  end

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

  def make_risky_long_move(params)
    RiskyLongMoveWorker.perform_async({
      player_id: params[:player_id],
      move: params[:move]
    })
  end

  def make_risky_short_move(params)
    RiskyShortMoveWorker.perform_async({
      player_id: params[:player_id],
      move: params[:move]
    })
  end
end
