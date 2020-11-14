class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :check_ten_todo, only: [:create]
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
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

  
  private

  def task_params
    params.require(:task).permit(:name, :image, :user_id, :task_id, :update)
  end
  
  def set_task
    @task = current_user.tasks.find(params[:id])
  end
  
  def check_ten_todo
    if user.tasks.todo.any? 
      user.tasks.todo.each do |id=0| 
        if id < 10
          id += 1
          if id = null
            break
          end 
        else 
            redirect_to root_path, notice: "やりたい事１０個を超えました全行程終了してください"
        end
      end
    end
  end  
  
end
