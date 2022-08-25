class UpdateArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_index :artworks, column: [:artist_id], name: "index_artworks_on_artist_id"

    remove_index :artwork_shares, column: [:artwork_id], name: "index_artwork_shares_on_artwork_id"
    remove_index :artwork_shares, column: [:viewer_id], name: "index_artwork_shares_on_viewer_id"


    add_index :artworks, :artist_id, unique: true
    add_index :artwork_shares, :artwork_id, unique: true
    add_index :artwork_shares, :viewer_id, unique: true
  end
end
