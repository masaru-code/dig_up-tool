class TasksController < ApplicationController
before_action :authenticate_user!  
  
  def index
    @tasks = Task.todo.order(updated_at: :desc).page(params[:page])
  end
  
  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
      if @task.save
        redirect_to dig_home_chat_room_path
      else
        render :new
      end
  end
  

  
private

  def task_params
    params.require(:task).permit(:name, :images)
  end
end
