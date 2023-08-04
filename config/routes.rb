Rails.application.routes.draw do
  resources :twitterclons
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "twitterclons#index"
end
