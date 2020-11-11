class UsersController < ApplicationController
  def index
    @users = User.all
    @menbers = User.select("name")
    @tasks = Task.all
    @user = params[:name]
  end
end
