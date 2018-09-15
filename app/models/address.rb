class Address < ApplicationRecord
	has_one :customer
	has_one :supplier
end