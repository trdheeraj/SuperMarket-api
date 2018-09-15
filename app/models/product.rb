class Product < ApplicationRecord
	has_many :sales_orders
	has_many :purchase_orders
end