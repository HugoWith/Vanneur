class Van < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :rentals

  validates :availibility, presence: true
  validates :prices, presence: true
  validates :town, presence: true
  validates :hyppyness, presence: true
end
