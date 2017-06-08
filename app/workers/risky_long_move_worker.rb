class RiskyLongMoveWorker < MoveWorker
  sidekiq_options queue: 'riskylongqueue'
end
