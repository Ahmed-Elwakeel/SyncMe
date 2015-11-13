class CreateJoinTablePostSong < ActiveRecord::Migration
  def change
    create_join_table :posts, :songs do |t|
      # t.index [:post_id, :song_id]
      # t.index [:song_id, :post_id]
    end
  end
end
