class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show, :update, :destroy]

  def new
    # Not needed, but rendering new render 'new'
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def edit
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end

  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @toenail = params
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
