Rails.application.routes.draw do

  resources :tasks do
    resources :chat_rooms, only: %i(index create)
    resources :todos do
      member do
        get "sort"
      end
    end
  end
  
  resources :users do
    resources :tasks, only: %i(index)
  end

  get 'chat_rooms/index'
  root 'dig_top#home'
 
  get 'dig_home/dighome'
  get 'dig_home/chat_room'
  get 'dig_home/dig_index'
  get 'dig_top/help'
  get 'dig_top/setumei'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  
  devise_for :users
  
  resources :endshow
  resources :chat_rooms
  resources :users
  resources :endshow
  

end

