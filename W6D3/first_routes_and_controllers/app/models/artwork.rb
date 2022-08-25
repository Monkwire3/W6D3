# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :text             not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :artist_id, :image_url, presence: true, uniqueness: {scope: :title}


    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User,
        inverse_of: :artworks
    
    has_many :comments,
        foreign_key: :artwork_id,
        class_name: :Comment,
        inverse_of: :artwork,
        dependent: :destroy

    has_many :viewers,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        inverse_of: :artwork,
        dependent: :destroy
    
    has_many :shared_viewers,
        through: :viewers,
        source: :viewer

    has_many :likes,
        as: :likeable





    # has_many :artworks_for_user_id
    #     through: :shared_viewers,
    #     source: :shared_artworks
    


    

end
