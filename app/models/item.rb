class Item < ApplicationRecord
	belongs_to :genre

  has_many :order_items
  has_many :orders, through: :order_items
	has_many :carts
  has_many :publics, through: :carts

  attachment :image

end