class Stat < ActiveRecord::Base
  def self.generate_stats!
    Log.recent_entries_by_ip.each do |log|
      stat = self.find_or_create_by(query: log.query)
      stat.searches += log.total
      stat.entries   = log.entries
      stat.save
    end
  end
end
