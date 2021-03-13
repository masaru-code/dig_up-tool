class DonesController < ApplicationController
    def show
        @user = User.find(params[:user_id])
    end

    def update
      @task.done!
      redirect_to endshow_index_path
    end
  
    def destroy
      task.destroy
    end
end
