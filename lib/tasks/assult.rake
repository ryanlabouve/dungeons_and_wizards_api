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
  desc "Runs 10 random attacks"
  task light: :environment do
    start = startFn
    10.times {
      Onslaught.new
    }
    endFn(start)
  end

  desc "Runs 50 random attacks"
  task medium: :environment do
    start = startFn
    50.times {
      Onslaught.new
    }
    endFn(start)
  end

  desc "Runs 150 random attacks"
  task heavy: :environment do
    start = startFn
    150.times {
      Onslaught.new
    }
    endFn(start)
  end
end
