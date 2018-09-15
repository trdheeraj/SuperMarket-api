class PurchaseOrder < ApplicationRecord
	belongs_to :product
	belongs_to :purchase_invoice
end