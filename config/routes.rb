Rails.application.routes.draw do
  resources :timeslots
  resources :users
  # get '/available', to: "timeslots#available"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
