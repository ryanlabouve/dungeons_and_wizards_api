namespace :battle do
  desc "Starts us a fresh battle"
  task new: :environment do
    Activity.delete_all
    Battle.create!
  end
end
