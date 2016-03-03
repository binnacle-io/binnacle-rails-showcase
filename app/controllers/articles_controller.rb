class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]

  respond_to :js

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def update
    @article.update(article_params)
  end

  def destroy
    @article.destroy

    render nothing: true
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
