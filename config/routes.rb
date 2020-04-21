Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  resources :helpful_users, only: [:create]
  resources :in_need_users
  resources :categories
  resources :helpful_items
 
  post '/login', to: 'auth#create'
  get '/profile', to: 'helpful_users#profile'
end
