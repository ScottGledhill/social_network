class SearchController < ApplicationController
  def username
    @users = User.select {|u| u.username.downcase.include? params[:username].downcase}
  end
end
