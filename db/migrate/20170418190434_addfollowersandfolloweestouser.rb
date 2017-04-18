class Addfollowersandfolloweestouser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :followers, :text, array: true, default: []
    add_column :users, :followees, :text, array: true, default: []
  end
end
