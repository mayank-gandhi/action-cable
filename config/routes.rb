Rails.application.routes.draw do
  devise_for :users
  resources :chatrooms
  get 'page/index'
  root 'page#index'
  get 'broadcast', to: 'page#broadcast', as: 'broadcast'
end
