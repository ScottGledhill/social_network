class FolloweesController < ApplicationController
  def create
    unless current_user.followees.include?(params[:followee_id])
      current_user.followees << params[:followee_id]
      current_user.save!
    end
    redirect_to profile_path(params[:followee_id])
  end

  def destroy
    if current_user.followees.include?(params[:id])
      current_user.followees.delete params[:id]
      current_user.save!
    end
    redirect_to profile_path(params[:id])
  end
end
