namespace :stats do
  desc "Generate stats"
  task generate: :environment do
    StatsWorker.perform_async
  end
end