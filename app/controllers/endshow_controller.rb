class EndshowController < ApplicationController
    before_action :authenticate_user!

    def index      
      @users = params[:name].present? ? User.where('name LIKE ?', "%#{params[:name]}%") : User.none
    end

    def show
      @retu = 0
      @user = User.find(params[:id])
      @tasks = @user.tasks.done.order(updated_at: :desc).page(params[:page])
      @todos 
    end

    def destroy
      task.destroy
    end
end