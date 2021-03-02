Rails.application.routes.draw do
  resources :users, only: [ :create]
  resources :todos, except: [ :show ]
  post '/login', to: 'application#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
