class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :query
      t.integer :entries
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
