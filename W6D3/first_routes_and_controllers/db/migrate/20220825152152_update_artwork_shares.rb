class UpdateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    remove_index :artwork_shares, :artwork_id, name: "index_artwork_shares_on_artwork_id"
    remove_index :artwork_shares, :viewer_id, name: "index_artwork_shares_on_viewer_id"

    add_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id
  end
end
