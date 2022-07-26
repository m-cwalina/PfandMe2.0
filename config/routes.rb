Rails.application.routes.draw do
  devise_for :pickers
  devise_for :users
  root to: 'pages#home'
  resources :appointments
  get "/dashboard", to: "pages#dashboard"
  get "/employee_dashboard", to: "pages#employee_dashboard"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  # A route to root a sign in to his or hers dashboard
  get '/user' => "pages#dashboard", :as => :user_root
end
