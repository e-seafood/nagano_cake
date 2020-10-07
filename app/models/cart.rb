class Cart < ApplicationRecord
	belongs_to :public
	belongs_to :item

  validates :item_count, presence: true
end