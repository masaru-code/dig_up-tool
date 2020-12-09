class EndshowController < ApplicationController
    before_action :authenticate_user!
    PER = 5

    def index      
      @users = params[:name].present? ? User.where('name LIKE ?', "%#{params[:name]}%") : User.none
      @eusers = @users.page(params[:page]).per(PER)
    end
end