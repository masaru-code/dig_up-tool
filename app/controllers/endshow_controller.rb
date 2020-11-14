class EndshowController < ApplicationController
before_action :authenticate_user!
  
  def index
    @tasks = Task.all
    @user = User.find_by('name LIKE ?', "%#{params[:name]}%")
    @users = params[:name].present? ? User.where(name LIKE ?, '%#{params[:name]}%') : User.all
  end
end
