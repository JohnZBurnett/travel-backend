class Api::V1::UserArticlesController < ApplicationController
    def index
        @user_articles = UserArticle.all 
        puts "User articles: "
        puts @user_articles
        render json: @users_articles
    end
end
