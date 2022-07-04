Rails.application.routes.draw do
  devise_for :pickers
  devise_for :users

  root to: 'pages#home'
end
