# == Schema Information
#
# Table name: likes
#
#  id            :bigint           not null, primary key
#  likeable_type :string
#  likeable_id   :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  liker_id      :bigint           not null
#
class Like < ApplicationRecord
    # validates :liker_id, presence: true, uniqueness: {scope: :artwork_id} || {scope: :comment_id}
    belongs_to :likeable,
        polymorphic: true


end
