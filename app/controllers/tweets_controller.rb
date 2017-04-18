class TweetsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.tweets.create(message: tweet_params[:message], user_id: current_user.id)
    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
end
