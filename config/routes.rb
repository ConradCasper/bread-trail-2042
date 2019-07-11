Rails.application.routes.draw do
  resources :stores
  resources :items
  resources :order_items
  resources :orders
  resources :survivors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'stores#index'

end
