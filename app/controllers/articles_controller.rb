class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
