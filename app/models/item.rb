class Item < ApplicationRecord
	has_many :genres

	belongs_to :order_item
	belongs_to :cart
