Rails.application.routes.draw do
  devise_for :pickers
  devise_for :users
  root to: 'pages#home'
  resources :appointments
  get "/dashboard", to: "pages#dashboard"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
end
