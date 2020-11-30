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
        params.require(:artwork).permit(:user_id, :MET_ID, :title, :image_link, :artist_name, :date_made, :medium, :country_of_origin, :region, :type)
    end

end