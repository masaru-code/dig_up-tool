class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :check_ten_todo, only: [:create]
  before_action :set_task, only: [:update]
  
  def index
    @tasks = current_user.tasks.todo.order(updated_at: :desc).page(params[:page])
    @yuser = current_user.name
  end
  
  def new
    @task = current_user.tasks.build
  end 
  
  def show
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
    # if @task.update(task_params)
       @koutei = current_user.tasks.select("todo")      
       current_user.tasks.done!
       current_user.tasks = @koutei
       redirect_to task_path
    # else
    #   @status = false
    # end
  end

  # DELETEs/1
  def destroy
    @task.destroy
  end

  
  private

  def task_params
    params.require(:task).permit(:user_id)
  end
  
  def set_task
    @task = current_user.tasks.find(params[:id])
  end
  
def check_ten_todo
redirect_to root_path, notice: 'やりたい事は10個以上を登録できません。全行程終了してから再度お試しください。' if current_user.tasks.todo.size == 10
end
  
end
