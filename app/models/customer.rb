class Customer < ApplicationRecord
  validates :Full_name, presence: true
end
