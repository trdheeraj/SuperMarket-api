class Supplier < ApplicationRecord
	belongs_to :address, dependent: :destroy
	has_many :purchase_invoices
	has_many :supplier_transactions
end