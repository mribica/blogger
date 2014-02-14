class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    respond_to do |format|
      format.html
    end
  end
end
