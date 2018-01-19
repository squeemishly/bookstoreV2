class BookLocation < ApplicationRecord
  belongs_to :book, optional: true
  belongs_to :location, optional: true
end
