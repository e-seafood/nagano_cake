class Cart < ApplicationRecord
	has_many :publics
	has_many :items
end
