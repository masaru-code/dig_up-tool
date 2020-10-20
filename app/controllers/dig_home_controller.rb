class DigHomeController < ApplicationController
#before_action :logged_in_user, only: [:jikou, :jikou_end, :chat_room, :minnna, :proces]
PER = 15
  
  def dighome
  
  end

  def jikou
  end
  
  def jikou_end
  end  

  def chat_room
  end

  def minna
  end

  def proces
  end
  
  def dig_index
    #@users = User.page(params[:page]) 
    @users = User.page(params[:page]).per(PER)
  end  
end
