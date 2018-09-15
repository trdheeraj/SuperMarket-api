class SalesOrder < ApplicationRecord
	belongs_to :product
	belongs_to :sales_invoice
end