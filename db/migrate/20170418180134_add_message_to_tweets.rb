class AddMessageToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :message, :string
  end
end
