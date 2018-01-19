class Location < ApplicationRecord
  has_many :book_locations
  has_many :books, through: :book_locations

  def self.find_books(id)
    location = Location.find(id)

    {
      id: location.id,
      name: location.name,
      books: location_books(location)
    }
  end

  private

  def self.location_books(location)
    location.books.map do |book|
      {
        id: book.id,
        title: book.title,
        genre: book.genre
      }
    end
  end
end
