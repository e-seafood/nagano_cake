class Public < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carts
  has_many :orders
  has_many :shippings

  #会員ステータスが退会済みならtrueを返すメゾット、退会済みユーザーのログインを弾く際に使用します。
  def active_for_authentication?
  	super && (self.is_deleted === false)
  end

end

