Rails.application.routes.draw do

  resources :tasks do
    resources :todos do
      member do
        get "sort"
      end
    end
  end
  get 'chat_rooms/index'

  root 'dig_top#home'
  # root to: "home#index"  
 
  get 'dig_home/dighome'
  get 'dig_home/chat_room'
  get 'dig_home/minna'
  get 'dig_home/dig_index'
  get 'dig_top/help'
  get 'dig_top/setumei'
  
  devise_for :users
  
  resources :dig_home
  resources :chat_rooms
  resources :users
  
  resources :tasks do
    resources :chat_rooms, only: %i(index create)
  end
  
end

