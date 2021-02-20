class EndshowController < ApplicationController
    before_action :authenticate_user!
    PER = 5

    def index      
      @dones = Task.done
      @tasks = Task.page(params[:page]).per(PER)
    end
end