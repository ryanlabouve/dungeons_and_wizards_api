class MoveManager
  # TODO: add docs move:move, player_id
  def enqueue_move(params)
    if is_short_move(params[:move])
      enqueue_short_move(params)
    else
      enqueue_long_move(params)
    end
  end

  private
  def is_short_move(move)
    move['queue_time'] < 5
  end

  def enqueue_long_move(params)
    LongMoveWorker.perform_async(params)
  end

  def enqueue_short_move(params)
    ShortMoveWorker.perform_async(params)
  end
end
