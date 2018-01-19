class Book < ApplicationRecord
  has_many :book_locations
  has_many :locations, through: :book_locations
end
