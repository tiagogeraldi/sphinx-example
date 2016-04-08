require 'spec_helper'

describe Stat do
  describe '#generate_stats!' do
    it "read logs and create stats" do
      log = create(:log)
      expect {
        Stat.generate_stats!
      }.to change {
        Stat.count
      }.by(1)

      expect(Stat.last.entries).to eq(log.entries)
    end
  end
end
