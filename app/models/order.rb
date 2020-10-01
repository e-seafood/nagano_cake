class Order < ApplicationRecord
	enum status:[0,1,2,3,4]
	enum payment:[0,1]
end
