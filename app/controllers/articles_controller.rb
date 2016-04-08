class ArticlesController < ApplicationController
  def index
  end

  def create
    @articles = Article.search(params[:search][:term])

    Log.create query:      params[:search][:term],
               entries:    @articles.total_entries,
               ip_address: request.remote_ip
  end
end
