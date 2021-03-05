Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root 'home#index'
  resources :articles do
    get "/user/:user_id", to: "articles#from_author", on: :collection
  end
end
