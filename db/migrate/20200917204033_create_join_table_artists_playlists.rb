class CreateJoinTableArtistsPlaylists < ActiveRecord::Migration[6.0]
  def change
    create_join_table :artists, :playlists do |t|
      # t.index [:artist_id, :playlist_id]
      # t.index [:playlist_id, :artist_id]
    end
  end
end
