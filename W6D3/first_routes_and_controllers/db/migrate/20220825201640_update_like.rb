class UpdateLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :liker, null: false, foreign_key: {to_table: :users}
  end
end
