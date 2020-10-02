Rails.application.routes.draw do
  root 'dig_top#home'
  get 'dig_top/help'

  #root 'application#hello'
end
