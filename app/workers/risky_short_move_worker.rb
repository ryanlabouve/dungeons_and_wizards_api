class RiskyShortMoveWorker < MoveWorker
  sidekiq_options queue: 'riskyshortqueue'
end
