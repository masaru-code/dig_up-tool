class WorkSchedulesController < ApplicationController
  before_action :authenticate_user!

  def index
    @task = Task.find(params[:task_id])
    @work_schedules = WorkSchedule.new
    @user = User.find(@task.user_id)
  end

  def create
    @work_schedule = @user.new(schedule_params)
    if @work_schedule.save
     redirect_to task_work_schedules_path(@task), notice: "工程作成されました"
    else
      render :index
    end
  end
  
  private
 
  def schedule_params
    params.require(:work_schedule).permit(:name)
  end

end
