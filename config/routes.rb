Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :speeches

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
