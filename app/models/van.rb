class Van < ApplicationRecord
  mount_uploader :pictures, PhotoUploader
  belongs_to :owner, class_name: 'User'

  has_many :rentals

  validates :availability, presence: true
  validates :prices, presence: true
  validates :town, presence: true

  def image
    if pictures.present?
      pictures
    else
      'https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80'
    end
  end
end
