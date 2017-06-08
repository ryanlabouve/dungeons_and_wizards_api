web: rails s -p 3000
longkiq: bundle exec sidekiq -c 2 -q longqueue,3 -q riskylongqueue,1
shortkiq: bundle exec sidekiq -c 3 -q shortqueue,3 -q riskylongqueue,1
