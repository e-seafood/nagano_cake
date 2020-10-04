class Public < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :shippings
  has_many :carts, through: :carts

<<<<<<< HEAD
  def active_for_authentication?
    super && (self.is_deleted == false)
  end

=======
  #会員ステータスが退会済みならtrueを返すメゾット、退会済みユーザーのログインを弾く際に使用します。
  def active_for_authentication?
  	super && (self.is_deleted === false)
  end
>>>>>>> e27cecf1126abadba88bfebea3678b217c0880e4
end

