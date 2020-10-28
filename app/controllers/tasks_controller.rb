class TasksController < ApplicationController
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
  
  def chat_room
  end
  
private

  def task_params
    params.require(:task).permit(:name)
  end
end
