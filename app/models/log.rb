class Log < ActiveRecord::Base
  scope :recent_entries_by_ip, -> do
    scoped = select('query, ip_address, entries, count(*) as total')
    scoped = scoped.where('created_at >= ?', 5.minutes.ago)
    scoped = scoped.group('query, ip_address, entries')
  end
end