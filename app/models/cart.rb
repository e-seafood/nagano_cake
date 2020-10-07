class Cart < ApplicationRecord
	belongs_to :public
	belongs_to :item

  validates :public_id, presence: true
  validates :item_id, presence: true
  validates :item_count, presence: true

end