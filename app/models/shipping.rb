class Shipping < ApplicationRecord
	belongs_to :public

<<<<<<< HEAD
	def shipping_all
      self.postcode + self.address + self.name
    end
=======
  def shipping_all
    self.postcode + self.address + self.name
  end
>>>>>>> 69011a491d7607bfd0f920abfec87f2bb7441f69

end