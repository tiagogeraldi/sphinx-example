class ArticlesController < ApplicationController
  def index
  end

  def create
    @articles = Article.search(params[:search][:term])
  end
end
