class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :playlists, :artist_id
    remove_column :songs, :artist_id
    remove_column :songs, :playlist_id
  end
end
