class Item < ApplicationRecord
  belongs_to :genre

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :carts
  has_many :publics, through: :carts

  attachment :image

  validates :genre_id, presence: true
  validates :name, presence: true
  validates :explanation, presence: true
  validates :non_taxed_price, presence: true
  validates :image_id, presence: true
  validates :is_active, presence: true
end
