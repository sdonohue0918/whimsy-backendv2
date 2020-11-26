class EiselsController < ApplicationController

def create
    # byebug
    eisel = Eisel.create(name: params[:eisel][:name], genre: params[:eisel][:genre], user_id: params[:eisel][:user_id])
    eisel.imagefile.attach(params[:eisel][:imagefile])
    eisel.download_imagefile
    render json: eisel

end

def index
    eisels = Eisel.all
    render json: eisels
end

def show
    eisel = Eisel.find_by(id: params[:id])
    render json: rails_blob_url(eisel.imagefile)
    
end

def delete
    eisel = Eisel.find_by(id: params[:id])
    
    render json: eisel
end

private

def eisel_params
    params.require(:eisel).permit(:user_id, :name, :genre, :imagefile)
end

end