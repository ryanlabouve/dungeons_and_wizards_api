class RiskyMoveManager
  # TODO: add docs move:move, player_id
  def enqueue_move(params)
    short = is_short_move(params[:move])
    risky = is_risky_move(params[:move])

    if short
      if risky
        enqueue_short_move(params)
      else
        enqueue_risky_short_move(params)
      end
    else
      if risky
        enqueue_risky_long_move(params)
      else
        enqueue_long_move(params)
      end
    end
  end
  private

  def is_risky_move(move)
    move['success_rate'] < 0.8
  end

  def is_short_move(move)
    move['queue_time'] < 5
  end

  def enqueue_risky_long_move(params)
    RiskyLongMoveWorker.perform_async(params)
  end

  def enqueue_risky_short_move(params)
    RiskyShortMoveWorker.perform_async(params)
  end

  def enqueue_long_move(params)
    LongMoveWorker.perform_async(params)
  end

  def enqueue_short_move(params)
    ShortMoveWorker.perform_async(params)
  end
end
