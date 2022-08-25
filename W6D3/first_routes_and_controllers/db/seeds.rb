# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'Payton')
User.create(username: 'Clide')
User.create(username: 'John')
User.create(username: 'Stacy')

Artwork.create(title: 'scream', image_url: 'scream.com', artist_id: 1)
Artwork.create(title: 'mona_lisa', image_url: 'mona_lisa.com', artist_id: 2)
Artwork.create(title: 'flowers', image_url: 'flowers.com', artist_id: 2)
Artwork.create(title: 'landscape', image_url: 'landscape.com', artist_id: 3)
Artwork.create(title: 'skyline', image_url: 'skyline.com', artist_id: 1)

ArtworkShare.create(artwork_id: 1, viewer_id:1)
ArtworkShare.create(artwork_id: 1, viewer_id:2)
ArtworkShare.create(artwork_id: 1, viewer_id:3)
ArtworkShare.create(artwork_id: 2, viewer_id:1)
ArtworkShare.create(artwork_id: 2, viewer_id:2)
ArtworkShare.create(artwork_id: 3, viewer_id:2)

Comment.create(body: 'nice drawing',author_id: 1, artwork_id: 1)
Comment.create(body: 'perfect drawing',author_id: 2, artwork_id: 2)
Comment.create(body: 'great drawing',author_id: 1, artwork_id: 1)
Comment.create(body: 'stupid drawing',author_id: 4, artwork_id: 3)

# INSERT INTO users

# INSERT INTO artworks

# INSERT INTO artwork_shares