class StatsController < ApplicationController
  def index
    @stats = Stat.order('searches DESC').limit(10)
  end
end
