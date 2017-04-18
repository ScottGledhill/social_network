class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets

  def get_timeline_tweets
    timeline_tweets = []
    followees.each do |followee_id|
      followee = User.find followee_id
      followee.tweets.each { |tweet| timeline_tweets << {content: tweet, author: followee} }
    end
    timeline_tweets.sort_by {|tweet| tweet[:content].created_at}.reverse
  end
end
