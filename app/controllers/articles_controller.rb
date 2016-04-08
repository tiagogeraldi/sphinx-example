class ArticlesController < ApplicationController
  def index
  end

  def create
    term      = params[:search][:term]
    @articles = Article.search(term)

    if (term.downcase.split - stopwords).any?
      Log.create query:      term,
                 entries:    @articles.total_entries,
                 ip_address: request.remote_ip
    end
  end

  private

  def stopwords
    Rails.cache.fetch 'stopwords' do
      File.open('config/stopwords.txt').read.split("\n")
    end
  end
end
