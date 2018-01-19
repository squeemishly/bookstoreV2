class BookLocation < ApplicationRecord
  belongs_to :book, optional: true
  belongs_to :location, optional: true

  def self.move_book(book_location_id, id)
    bl = BookLocation.find(book_location_id)
    bl.location_id = id
    bl.save

    Book.find_book(bl.book_id)
  end
end
