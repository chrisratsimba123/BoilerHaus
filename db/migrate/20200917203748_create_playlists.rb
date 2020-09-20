class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :image
      t.string :playlist_description
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
