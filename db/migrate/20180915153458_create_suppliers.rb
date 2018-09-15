class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
    	t.string :name
    	t.integer :address_id
    	t.integer :mobile
    	t.string :email
    	t.string :tin_number
    	t.string :gst_number

    	t.timestamps
    end
  end
end
