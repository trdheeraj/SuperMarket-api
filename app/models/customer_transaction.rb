class CustomerTransaction < ApplicationRecord
	belongs_to :customer
	belongs_to :sales_invoice
end