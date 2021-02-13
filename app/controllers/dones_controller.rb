class DonesController < ApplicationController
    def show
        @user = User.find(params[:user_id])
        @task = Task.done.find(params[:done_id)
    end
  
    def destroy
      task.destroy
    end
end
