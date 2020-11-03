Rails.application.routes.draw do

  resources :todos
  resources :goals
  get 'chat_rooms/index'
  #講師に直してもらったroot
  # rails routesで詳細確認
  # root 'dig_top#home'
  root to: "home#index"  

  get 'dig_home/dighome'
  get 'dig_home/jikou'
  get 'dig_home/jikou_end'
  get 'dig_home/chat_room'
  get 'dig_home/minna'
  get 'dig_home/proces'
  get 'dig_home/dig_index'
  get 'dig_top/help'
  get 'dig_top/setumei'
  
  devise_for :users
  
  resources :chat_rooms
  resources :users
  resources :tasks do
    resources :chat_rooms, only: %i(index)
  end
end

