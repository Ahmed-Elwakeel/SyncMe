class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
     # t.integer :post_id
      t.text :content
      t.integer :status
      t.integer :comments_count
      t.integer :likes_count
      t.timestamps null: false
    end
  end
end
