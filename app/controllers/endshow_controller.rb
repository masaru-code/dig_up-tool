class EndshowController < ApplicationController
    def index
        @user = params[:user_id].present? ? @user : current_user
        @tasks = @user.tasks.done.order(updated_at: :desc).page(params[:page])
    end
end
