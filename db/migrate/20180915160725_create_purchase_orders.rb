class CreatePurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_orders do |t|
    	t.integer :purchase_invoice_id
    	t.integer :product_id
    	t.integer :quantity

    	t.timestamps
    end
  end
end
