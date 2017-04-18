class HomeController < ApplicationController
  def index
    @user = current_user
    @timeline_tweets = current_user.get_timeline_tweets if current_user
  end
end
