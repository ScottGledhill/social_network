class ProfilesController < ApplicationController
  def show
    @current_user = current_user
    @user = User.find(params[:id])
  end
end
