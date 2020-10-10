Rails.application.routes.draw do
  get 'dig_home/dighome'

  get 'dig_home/jikou'
  
  get 'dig_home/jikou_end'

  get 'dig_home/chat_room'

  get 'dig_home/minna'

  get 'dig_home/proces'

  devise_for :users
  
  root 'dig_top#home'  
  get 'pages/index'

  get 'pages/show'

  get 'dig_top/help'

  get 'dig_top/setumei'
  #root 'application#hello'
end
