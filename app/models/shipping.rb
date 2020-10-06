class Shipping < ApplicationRecord
	belongs_to :public

  def shipping_all
    self.postcode + self.address + self.name
  end

end