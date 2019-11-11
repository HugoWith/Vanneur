class Rental < ApplicationRecord
  belongs_to :van
  belongs_to :customer, class_name: 'User'
end
