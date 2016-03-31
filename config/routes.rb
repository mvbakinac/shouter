Rails.application.routes.draw do
 
  root to: 'homes#show', via: :get
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resource :dashboard, only: [:show]
end
