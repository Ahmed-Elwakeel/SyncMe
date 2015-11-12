class CreateSongpostusers < ActiveRecord::Migration
  def change
    create_table :songpostusers do |t|
      t.integer :song_id
      t.integer :post_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
