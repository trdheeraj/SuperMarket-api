class ChangeCityColumnNameToStateInAddresses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :addresses, :city, :state
  end
end
