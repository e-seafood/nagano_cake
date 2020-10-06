class Order < ApplicationRecord
	belongs_to :public

	has_many :order_items
<<<<<<< HEAD
has_many :items, through: :order_items
=======
  has_many :items, through: :order_items
>>>>>>> 69011a491d7607bfd0f920abfec87f2bb7441f69

	enum payment: {"クレジットカード": 0,"銀行振込": 1}
	enum status: {"入金待ち": 0,"入金確認": 1,"製作中": 2,"発送準備中": 3, "発送済み": 4}
end
