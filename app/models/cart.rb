class Cart < ApplicationRecord
	belongs_to :public
	belongs_to :item

  validates :item_count, presence: true,
  			 numericality: {only_integer: true, greater_than_or_equal_to: 1,allow_blank: true}
end