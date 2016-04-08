class AddArticlesToStat < ActiveRecord::Migration
  def change
    add_column :stats, :entries, :integer
  end
end
