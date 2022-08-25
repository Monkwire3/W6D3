class CreateLike < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :liker, null: false, foreign_key: { to_table: :users }
      t.references :artwork, foreign_key: { to_table: :artworks }
      t.references :comment, foreign_key: { to_table: :comments }

      t.timestamps
    end
  end
end
