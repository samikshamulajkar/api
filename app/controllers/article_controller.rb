class ArticleController < ApplicationController

    def index
        articles = Article.all
        render json: articles
    end

    def show
        
    end
end
