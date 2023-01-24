Rails.application.routes.draw do
  root "articles#index"

  # Refactored to use Rails routes method 'resources'
  resources :articles
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
end
