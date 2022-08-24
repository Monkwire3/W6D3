class ChangeArtwork < ActiveRecord::Migration[7.0]
  def change
    change_column :artworks, :image_url, :text, index: {unique: true}
    change_column :artworks, :artist_id, :bigint, index: {unique: true}
  end
end
