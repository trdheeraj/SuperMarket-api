class SalesInvoice < ApplicationRecord
	belongs_to :customer
	has_many :sales_orders
	has_many :customer_transactions
end