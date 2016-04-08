class StatsController < ApplicationController
  def index
    @stats = Stat.order('searches DESC').limit(10)
  end

  def destroy_all
    Stat.delete_all

    redirect_to stats_path
  end
end
