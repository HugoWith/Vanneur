class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rentals, foreign_key: :customer_id, dependent: :destroy
  has_many :vans, foreign_key: :owner_id, dependent: :destroy
end
