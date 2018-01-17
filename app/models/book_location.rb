class BookLocation < ApplicationRecord
  belongs_to :books, optional: true
  belongs_to :locations, optional: true
end
