class ArtworkSharesController < ApplicationController
    def index
        shares = ArtworkShare.all
        render json: shares
    end

    def create
        shared = ArtworkShare.new(params.require(:artwork_shares).permit(:viewer_id, :artwork_id))

        if shared.save
            render json:params
        else
            render json: shared.errors.full_messages, status: :unprocessable_entity
        end

    end

    def destroy
        shared = ArtworkShare.find(params[:id])
        shared.destroy
        redirect_to artwork_shares_url
    end

    def artwork_shares_params
        params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
    end
end