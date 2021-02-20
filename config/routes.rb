Rails.application.routes.draw do
  resources :carts
  resources :products
  resources :details
  root 'pages#home'
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
