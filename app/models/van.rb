class Van < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id

  has_many :rentals

  validates :availability, presence: true
  validates :prices, presence: true
  validates :town, presence: true
  validates :hyppyness, presence: true
end
