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

  def new
    @article = Article.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      respond_to do |format|
        format.html { redirect_to article_path(@article)}
      end
    else
      respond_to do |format|
        format.html { render :new }
      end
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
