class ChatRoomsController < ApplicationController

  def index
    @task = Task.find(params[:task_id])
    render layout: false
  end
end
