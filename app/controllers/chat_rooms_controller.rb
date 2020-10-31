class ChatRoomsController < ApplicationController

  def index
    # @user = current_user.users
    @user = User.all
    @task = Task.find(params[:task_id])
    # if @task.save
    #   redirect_to task_chat_rooms_path(@task)
    # end
    render layout: false
  end
end
