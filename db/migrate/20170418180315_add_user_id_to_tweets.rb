class AddUserIdToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :user_id, :string
    add_index :tweets, :user_id
  end
end
