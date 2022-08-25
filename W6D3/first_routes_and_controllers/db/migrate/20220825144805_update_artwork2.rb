class UpdateArtwork2 < ActiveRecord::Migration[7.0]
  def change
    remove_index :artworks, :artist_id, name: "index_artworks_on_artist_id"
    add_index :artworks, :artist_id
  end
end
