class ChatRoomsController < ApplicationController

  def index
    # @user = current_user.users
    @user = User.all
    @task = Task.find(params[:task_id])
    # @comment = current_user.comments.build(comment_params)
    # @comment.save

    render layout: false
  end
  
  def create
    @coment = current_user.coments.build(coment_params)
    if @coment.save
      redirect_to task_chat_rooms_path(@coment)
    else
      render :index
    end
  end
  private

  def coment_params
    params.require(:coment).permit(:coment)
  end
  
end
