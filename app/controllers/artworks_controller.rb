class ArtworksController < ApplicationController

    def index
        artworks = Artwork.all 
        render json: artworks
    end

    def create
        
        artwork = Artwork.create(artwork_params)
        render json: artwork
    end

    def destroy
        artwork = Artwork.find_by(id: params[:id])
        artwork.destroy
        render json: artwork
    end

    private

    def artwork_params
        params.require(:artwork).permit(:user_id, :objectID, :title, :primaryImage, :artistDisplayName, :objectDate, :medium, :country_of_origin, :region, :kind)
    end

end

