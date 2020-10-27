class TasksController < ApplicationController
  def index
    @tasks = Task.todo.order(updated_at: :desc).page(params[:page])
  end

  def new
    @task = current_user.tasks.build  #current_userはdevise時に使える機能
  end

  def create
    @task = current_user.tasks.build(task_params)
      if @task.save
        redirect_to dig_home_chat_room_path  #create.html.erbじゃなくダイレクトにchdt_roomへ
      else
        render :index
      end
  end
  
private

  def task_params
    params.require(:task).permit(:name)
  end
end
