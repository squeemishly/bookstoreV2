class Book < ApplicationRecord
  has_many :book_locations
  has_many :locations, through: :book_locations

  def self.find_book(id)
    book = Book.find(id)
    locations = book.locations

    {
      id: book.id,
      title: book.title,
      genre: book.genre,
      locations: locations.map { |loc| loc.name }
    }
  end
end
