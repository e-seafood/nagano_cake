class OrderItem < ApplicationRecord
	belongs_to :item
	belongs_to :order

	enum making_status:[0,1,2,3]
end