class EndshowController < ApplicationController
    before_action :authenticate_user!

    def index      
      @users = params[:name].present? ? User.where('name LIKE ?', "%#{params[:name]}%") : User.none
    end

    def show
      @user = params[:user_id].present? ?
      @tasks = @user.tasks.done.order(updated_at: :desc).page(params[:page])
    end
end