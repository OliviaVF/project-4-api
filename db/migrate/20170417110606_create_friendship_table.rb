class CreateFriendshipTable < ActiveRecord::Migration[5.0]
  def change
    create_table :friendship_tables do |t|
      t.integer :user_id
      t.integer :follower_id
    end
  end
end
