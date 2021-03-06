class Shipping < ApplicationRecord
  belongs_to :public

  def shipping_all
    self.postcode + self.address + self.name
  end

  validates :postcode,
            presence: true,
            format: { with: /\A\d{7}\z/, allow_blank: true }

  validates :address, presence: true
  validates :name, presence: true
end
