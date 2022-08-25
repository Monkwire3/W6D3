class ArtworksController < ApplicationController

    def index
        user = User.find(params[:user_id])
        render json: user, include: [:shared_artworks, :artworks] 
    end

    def create
        # debugger
        artwork = Artwork.new(params.require(:artworks).permit(:title, :artist_id, :image_url))
        # artwork.save!
        if artwork.save
            render json: params
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        debugger
        artwork = Artwork.find(params[:id])
        render json: artwork
    end


    def update
        artwork = Artwork.find(params[:id])
        if artwork.update(artwork_param)
            redirect_to artwork_url(artwork.id)
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        redirect_to artworks_url
    end

    def artwork_param
        params.require(:artworks).permit(:title, :image_url)
    end

end