class DigHomeController < ApplicationController

#before_action :logged_in_user, only: [:jikou, :jikou_end, :chat_room, :minnna, :proces]deviseで自動生成
PER = 5
  
  def dighome
  
  end

  def dig_index
    #@users = User.page(params[:page]) 
    @users = User.page(params[:page]).per(PER)
  end
  
  def minna
    @tasks = Task.all
    @tasksname = Task.select("name")
    @users = User.all
    @usersname = User.select("name")
  end
  
  def show
  end
  
  def chat_room
     @task = current_user.tasks(name)
    # @user = current_user.users
  end
  
private


end
