class Cart < ApplicationRecord
	belongs_to :publics
	belongs_to :items
end
