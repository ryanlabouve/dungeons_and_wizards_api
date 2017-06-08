class ShortMoveWorker < MoveWorker
  sidekiq_options queue: 'shortqueue'
end
