class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task
  before_action :set_todo, only: [:show, :edit, :update, :destroy, :sort]

  # GET /todos/new
  def new
    @todo = @task.todos.new
  end

  # GET /todos/1/edit
  def edit
  end
  
  def sort
  end


  # POST /todos
  def create
    @todo = @task.todos.new(todo_params)

    if @todo.save
       @status = true
    else
       @status = false
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
       @status = true
    else
       @status = false
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    redirect_to todos_url, notice: 'Todo was successfully destroyed.'
  end

  private

  def set_task
    @task = current_user.tasks.find_by(id: params[:task_id])
    redirect_to(tasks_url, alert: "ERROR!!") if @task.blank?
  end

  def set_todo
    @todo = @task.todos.find_by(id: params[:id])
  end


    def todo_params
      params.require(:todo).permit(:content, :task_id, :position, :done)
    end
end
