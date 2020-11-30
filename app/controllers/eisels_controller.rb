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
    render json: eisels, include: [:likes]
end

def show
    eisel = Eisel.find_by(id: params[:id])
    render json: eisel, include: [:likes]
    
end

def destroy
    byebug
    eisel = Eisel.find_by(id: params[:id])
    eisel.delete_imagefile
    eisel.destroy
    render json: eisel
end

private

def eisel_params
    params.require(:eisel).permit(:user_id, :name, :genre, :imagefile)
end

end