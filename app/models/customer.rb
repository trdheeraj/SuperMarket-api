class Customer < ApplicationRecord
	belongs_to :address, dependent: :destroy
	has_many :sales_invoices
	has_many :customer_transactions
end