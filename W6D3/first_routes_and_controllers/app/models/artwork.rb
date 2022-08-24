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
    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User
    
    has_many :viewers,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    


    

end
