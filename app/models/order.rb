class Order < ApplicationRecord
	has_many :publics

	belongs_to :order_item

	enum status:[0,1,2,3,4]
	enum payment:[0,1]
end
