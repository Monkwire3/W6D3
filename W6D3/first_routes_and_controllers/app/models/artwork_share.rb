# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint           not null, primary key
#  artwork_id :bigint           not null
#  viewer_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArtworkShare < ApplicationRecord
    validates :artwork_id, presence: true, uniqueness: { scope: :viewer_id }

    belongs_to :viewer,
        foreign_key: :viewer_id,
        class_name: :User,
        inverse_of: :pieces_viewed
    
    belongs_to :artwork,
        inverse_of: :viewers
end
