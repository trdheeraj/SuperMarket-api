class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
    	t.string :name
    	t.integer :address_id
    	t.integer :mobile
    	t.string :email

    	t.timestamps
    end
  end
end
