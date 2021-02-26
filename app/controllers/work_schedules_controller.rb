class WorkSchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: %i(index create destroy edit)


  def index
    @work_schedules = @task.work_schedules
    @user = User.find(@task.user_id)
  end


  def create
    @work_schedule = @task.work_schedules.build(schedule_params)
    if @work_schedule.save
     redirect_to task_work_schedules_path(@task), notice: "工程作成されました"
    else
      render :index
    end
  end

  def edit
  end

  def destroy
    @work_schedule = @task.work_schedules.find(params[:id])
    @work_schedule.destroy
    redirect_to task_work_schedules_path(@task), notice: "削除されました"
  end
  
  private
 
  def schedule_params
    params.require(:work_schedule).permit(:name)
  end

  def set_task
    @task = Task.find(params[:task_id])
  end

end
