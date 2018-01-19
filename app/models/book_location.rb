class BookLocation < ApplicationRecord
  belongs_to :book, optional: true
  belongs_to :location, optional: true

  def self.move_book(book_id, id)
    bl = BookLocation.find_by(book_id: book_id)
    bl.location_id = id
    bl.save

    Book.find_book(book_id)
  end
end
