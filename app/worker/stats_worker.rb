class StatsWorker
  include Sidekiq::Worker

  def perform
    Stat.generate_stats!
  end
end
