class PurchaseInvoice < ApplicationRecord
	belongs_to :supplier
	has_many :purchase_orders
	has_many :supplier_transactions
end