Rails.application.routes.draw do
  devise_for :pickers, path: 'pickers', controllers: { sessions: "pickers/sessions", registrations: "pickers/registrations"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations"}
  root to: 'pages#home'
  resources :appointments
  get "/dashboard", to: "pages#dashboard"
  get "/employee_dashboard", to: "pages#employee_dashboard"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  # A route to root a sign in to his or hers dashboard
  devise_scope :user do
    get '/user' => 'pages#dashboard', :as => :user_dashboard
  end
  devise_scope :picker do
    get '/picker' => 'pages#dashboard', :as => :picker_dashboard
  end
end
