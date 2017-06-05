Rails.application.routes.draw do
  resources :players
  get "/battle", to: 'battle#stats'
  post "/move", to: 'battle#move'
  get "/activities", to: 'battle#recent_activity'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
