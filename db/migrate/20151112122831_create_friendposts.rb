class CreateFriendposts < ActiveRecord::Migration
  def change
    create_table :friendposts do |t|
      t.integer :user_a
      t.integer :user_b
      t.text :content

      t.timestamps null: false
    end
  end
end
