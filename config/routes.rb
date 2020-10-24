Rails.application.routes.draw do
  get 'dig_home/dighome'

  get 'dig_home/new'
  
  get 'dig_home/jikou_end'

  get 'dig_home/chat_room'

  get 'dig_home/minna'

  get 'dig_home/proces'
  
  get 'dig_home/dig_index' 

  devise_for :users
  resources :users
  resources :jikous
  
  root 'dig_top#home'  
  get 'users/index'

  get 'users/show'

  get 'dig_top/help'

  get 'dig_top/setumei'
  #root 'application#hello'
  
  
end

