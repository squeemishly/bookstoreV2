require 'rails_helper'

describe BookLocation, type: :model do
  describe '.move_book' do
    it 'updates a books location' do
      book_id = create(:book).id
      location_id = create(:location).id
      book_location_id = create(:book_location,
        book_id: book_id,
        location_id: location_id).id
      new_location_id = create(:location, name: "fake second location").id

      allow(Book).to receive(:find_book).and_return(:fake_book_information)

      result = BookLocation.move_book(book_location_id, location_id)

      expect(result).to eq :fake_book_information
    end
  end
end
