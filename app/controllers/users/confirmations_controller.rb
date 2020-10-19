# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
    @user = User.find(params[:id])
end
