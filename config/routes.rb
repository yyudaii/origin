Rails.application.routes.draw do
  devise_for :users
  get 'lyrics/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :lyrics
  root  "lyrics#index"
  
end