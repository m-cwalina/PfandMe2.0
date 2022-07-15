Rails.application.routes.draw do
  devise_for :pickers
  devise_for :users
  root to: 'pages#home'
  resources :appointments
  # devise_scope :user do
    # get "/dashboard", to: "pages#dashboard"
  # end
  get "/dashboard", to: "pages#dashboard"
end
