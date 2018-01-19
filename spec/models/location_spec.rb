require 'rails_helper'

describe Location, type: :model do
  describe ".find_books" do
    it 'returns a hash of location information and books in that location' do
      book_id = create(:book).id
      location_id = create(:location).id
      book_location = create(:book_location, book_id: book_id, location_id: location_id)

      result = Location.find_books(location_id)

      expect(result).to be_a Hash
      expect(result).to have_key :id
      expect(result).to have_key :name
      expect(result).to have_key :books
      expect(result[:books]).to be_an Array
      expect(result[:books].first).to have_key :id
      expect(result[:books].first).to have_key :title
      expect(result[:books].first).to have_key :genre

      expect(result[:id]).to eq location_id
      expect(result[:name]).to eq "fake location"
      expect(result[:books].first[:id]).to eq book_id
      expect(result[:books].first[:title]).to eq "fake title"
      expect(result[:books].first[:genre]).to eq "fake genre"
    end
  end
end
