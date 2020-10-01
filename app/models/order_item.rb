class OrderItem < ApplicationRecord
	has_many :items
	has_many :orders

	enum making_status:[0,1,2,3]
end
