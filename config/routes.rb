Rails.application.routes.draw do
  get "/bienvenida", to: "home#index"
  resources :articles
end
