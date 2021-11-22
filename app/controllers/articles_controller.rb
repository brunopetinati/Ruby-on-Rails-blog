class ArticlesController < ApplicationController

    def index
        @articles = Articles.all
    end

    def show
        @article = Articles.find(params[:id])
        # para que essa varíavel fique disponível global, @ para torná-la uma 
        # instance variable
    end

    def new

    end

    def create 
        @articles = Articles.new(params.require(:article).permit(:title, :description))
        # checar diferentes resultados com
        # render plain: @article.inspect
        # render plain: @article
        @article.save
        redirect_to
    end
    
end