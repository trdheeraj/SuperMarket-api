class AddTimestampColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :created_at, :timestamp
  	add_column :users, :updated_at, :timestamp
  end
end
