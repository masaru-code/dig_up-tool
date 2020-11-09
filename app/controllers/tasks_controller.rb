class TasksController < ApplicationController
before_action :authenticate_user!
before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = Task.todo.order(updated_at: :desc).page(params[:page])
    @gtasks = current_user.tasks.all
    @yuser = current_user.name
  end
  
  def new
    @task = current_user.tasks.build

    # if (task_id <= 10)
    #   @task = current_user.tasks.new
    # end
  end
  
  def edit
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to task_chat_rooms_path(@task)
      @status = true
    else
      render :new
      @status = false
    end
  end


def update
    if @task.update(task_params)
       @status = true
    else
       @status = false
    end
end

  # DELETEs/1
  def destroy
    @task.destroy
  end

  
  def show
  end
  
private

  def task_params
    params.require(:task).permit(:name, :image, :user_id, :task_id)
  end
  
  def set_task
   @task = current_user.tasks.find_by(id: params[:id])
   redirect_to(tasks_url, alert: "ERROR!!") if @task.blank?
  end
  
end
