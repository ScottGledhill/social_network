class ProfilesController < ApplicationController
  def show
    @current_user = current_user
    @user = User.find(params[:id])
    @following = current_user.followees.include? @user.id.to_s
  end
end
