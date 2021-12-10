Rails.application.routes.draw do


  #root 'orders#new'
  resources :orders, only: [:new, :create]
  #devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_for :users
  # root to: 'user#index'

  get 'user/index'
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :games
  resources :carts 
  resources :items 
  resources :avatars 

end
