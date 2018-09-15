class CreateSalesInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_invoices do |t|
    	t.integer :bill_number
    	t.integer :customer_id
    	t.datetime :date
    	t.float :discount
    	t.string :payment_type
    	t.float :amount

    	t.timestamps
    end
  end
end
