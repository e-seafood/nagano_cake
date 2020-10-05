class Order < ApplicationRecord
	belongs_to :public

	has_many :order_items

	enum status:[0,1,2,3,4]
	enum payment:[:credit, :bank]

end
