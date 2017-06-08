class LongMoveWorker < MoveWorker
  sidekiq_options queue: 'longqueue'
end
