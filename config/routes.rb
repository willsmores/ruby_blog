Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
  # Refactored to use Rails routes method 'resources'
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
end
