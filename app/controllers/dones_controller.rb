class DonesController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @tasks = @user.tasks.done.order(updated_at: :desc).limit(1)
    end
  
    def destroy
      task.destroy
    end
end
