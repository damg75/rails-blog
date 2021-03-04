class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to articles_path, notice: "Categoría creada"
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @article.update(article_params)
          redirect_to article_path(@article), notice: "Artículo actualizado"
        else
          render :edit
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path, alert: "Artículo eliminado"
    end

    private

    def article_params
        params.require(:article).permit(:title, :content)
    end

    def set_article
        @article = Article.find(params[:id])
    end

end
