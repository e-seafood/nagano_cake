class Item < ApplicationRecord
	belongs_to :genre

	has_many :order_items
	has_many :carts, through: :carts

  attachment :image

end