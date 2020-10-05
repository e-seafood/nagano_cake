class Public < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :shippings
  has_many :carts, through: :carts

  validates_uniqueness_of :email
  
  def active_for_authentication?
  	super && (self.is_deleted === false)
  end
end

