class DigHomeController < ApplicationController
# ログインユーザーだけがonly後のページを見れる
# 下でdevise機能のcurrent_userが使えるようになったのが受け取れます
# before_action :authenticate_user!

#before_action :logged_in_user, only: [:jikou, :jikou_end, :chat_room, :minnna, :proces]deviseで自動生成
PER = 5
  
  def dighome
  
  end

  def dig_index
    #@users = User.page(params[:page]) 
    @users = User.page(params[:page]).per(PER)
  end  
  
  def show
  end
  
  def chat_room
     @task = current_user.tasks(name)
    # @user = current_user.users
  end
  
private


end
