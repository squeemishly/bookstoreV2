require 'rails_helper'

describe 'Bookstore API' do
  it 'can get one book by id and show the location' do
    book_id = create(:book).id
    location_id = create(:location).id
    book_location = create(:book_location, book_id: book_id, location_id: location_id)

    get "/api/v1/books/#{book_id}"

    book = JSON.parse(response.body)

    expect(response).to be_success
    expect(book["id"]).to eq book_id
    expect(book["title"]).to eq "fake title"
    expect(book["genre"]).to eq "fake genre"
    expect(book["location"]).to eq "fake location"
  end
end
