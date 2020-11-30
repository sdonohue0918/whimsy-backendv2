class LikesController < ApplicationController
    def index
        likes = Like.all 
        render json: likes, include: [:user, :eisel]
    end

    def create
        like = Like.create(user_id: params[:like][:user_id], eisel_id: params[:like][:eisel_id])
        render json: like
    end

    def destroy
        like = Like.find_by(id: params[:id])
        like.destroy
        render json: like
    end
    private

    def like_params
        params.require(:like).permit(:eisel_id, :user_id)
    end
end