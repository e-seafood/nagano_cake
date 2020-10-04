class Public < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :shippings
  has_many :carts, through: :carts

  validates :first_name_kana,:last_name_kana, presence: true,
            format: {with:/[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+/}

  #会員ステータスが退会済みならtrueを返すメゾット、退会済みユーザーのログインを弾く際に使用します。
  def active_for_authentication?
  	super && (self.is_deleted === false)
  end
end

