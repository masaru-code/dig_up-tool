Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'

  get 'pages/show'

  get 'signtouroku/iriguti'
  get 'signtouroku/touroku'

  root 'dig_top#home'
  get 'dig_top/help'

  #root 'application#hello'
end
