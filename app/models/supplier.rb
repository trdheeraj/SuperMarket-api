class Supplier < ApplicationRecord
	belongs_to :address, dependent: :destroy
end