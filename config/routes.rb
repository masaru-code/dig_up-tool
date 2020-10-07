Rails.application.routes.draw do
  devise_for :users
  
  root 'dig_top#home'  
  get 'pages/index'

  get 'pages/show'

  get 'dig_top/help'

  get 'dig_top/setumei'
  #root 'application#hello'
end
