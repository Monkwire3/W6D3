class AddFavoritetoArtwork < ActiveRecord::Migration[7.0]
  def change
    add_reference :artworks, :favorited_by, foreign_key: { to_table: :users }
  end
end
