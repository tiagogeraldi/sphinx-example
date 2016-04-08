class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :query
      t.integer :searches, default: 0

      t.timestamps null: false
    end
  end
end
