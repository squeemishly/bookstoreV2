require 'rails_helper'

describe Book, type: :model do
  describe '.find_book' do
    it 'returns the book information and all locations' do
      book_id = create(:book).id
      location_id = create(:location).id
      book_location = create(:book_location, book_id: book_id, location_id: location_id)

      result = Book.find_book(book_id)

      expect(result).to be_a Hash
      expect(result).to have_key :id
      expect(result).to have_key :title
      expect(result).to have_key :genre
      expect(result).to have_key :locations

      expect(result[:id]).to eq book_id
      expect(result[:title]).to eq "fake title"
      expect(result[:genre]).to eq "fake genre"
      expect(result[:locations]).to be_an Array
      expect(result[:locations].first).to eq "fake location"
    end
  end
end
