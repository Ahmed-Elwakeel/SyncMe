class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user_a
      t.integer :user_b
      t.integer :status

      t.timestamps null: false
    end
  end
end
