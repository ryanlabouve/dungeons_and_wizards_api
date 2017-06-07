namespace :battle do
  desc "TODO"
  task new: :environment do
    Activity.delete_all
    Battle.create!
  end

end
