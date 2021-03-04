Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :articles
  get "articles/user/:user_id", to: "articles#from_author"
end
