def startFn
  start = Time.zone.now
  puts "A light assult started as #{start}"
  start
end

def endFn(start)
  end_time = Time.zone.now
  puts "A light assult ended at #{end_time}"
  puts "Total time:"
  puts start - end_time
end

namespace :assult do
  desc "TODO"
  task light: :environment do
    start = startFn
    10.times {
      Onslaught.new
    }
    endFn(start)
  end

  desc "TODO"
  task medium: :environment do
    start = startFn
    50.times {
      Onslaught.new
    }
    endFn(start)
  end

  desc "TODO"
  task heavy: :environment do
    start = startFn
    150.times {
      Onslaught.new
    }
    endFn(start)
  end
end
