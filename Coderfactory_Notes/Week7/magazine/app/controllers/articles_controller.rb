class ArticlesController < ApplicationController

  def new

  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show

    @article = Article.find(params[:id])
    @toenail = params

  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end

end
