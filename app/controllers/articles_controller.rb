class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(title: params[:article][:title])
        if @article.save
            redirect_to articles_path, notice: "Categoría creada"
        else
            render :new
        end
    end
end
