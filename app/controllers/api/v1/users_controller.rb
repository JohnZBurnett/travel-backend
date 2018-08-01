class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

      def show
        @user = User.find(params[:id])
        render json: @user
      end

    def create
        @user = User.find_or_create_by(user_params)
        render json: @user
    end

    def update 
        @user = User.find(params[:id])
        article_id = params[:articles].last["id"]
        user_id = params[:id].to_i
        UserArticle.create(user_id: user_id, article_id: article_id)
        render json: @user
    end 

    private

    def user_params
        params.permit(:username, :password)
    end
end
