class Shipping < ApplicationRecord
  belongs_to :public

  def shipping_all
    postcode + address + name
  end

  validates :postcode, presence: true, length: { maximum: 7 }
  validates :address, presence: true
  validates :name, presence: true
end
