Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/new'

  get 'tasks/create'

  #自分で書いたルート
  # get 'dig_home/dighome'
  # get 'dig_home/new'
  # get 'dig_home/jikou_end'
  # get 'dig_home/chat_room'
  # get 'dig_home/minna'
  # get 'dig_home/proces'
  # get 'dig_home/dig_index' 
  # devise_for :users
  # resources :users
  # resources :jikous
  # root 'dig_top#home'  
  # get 'users/index'
  # get 'users/show'
  # get 'dig_top/help'
  # get 'dig_top/setumei'
  # #root 'application#hello'
  
  #講師に直してもらったroot
  # rails routesで詳細確認
root 'dig_top#home'

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

resources :users
resources :tasks
  
end

