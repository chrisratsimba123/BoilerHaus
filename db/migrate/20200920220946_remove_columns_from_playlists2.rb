class RemoveColumnsFromPlaylists2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :playlists, :song1
    remove_column :playlists, :song2
    remove_column :playlists, :song3
  end
end
