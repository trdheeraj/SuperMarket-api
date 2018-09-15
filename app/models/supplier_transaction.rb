class SupplierTransaction < ApplicationRecord
	belongs_to :supplier
	belongs_to :purchase_invoice
end