require 'rails_helper'

describe 'Bookstore API' do
  attr_reader :book_id, :location_id, :book_location

  before(:each) do
    @book_id = create(:book).id
    @location_id = create(:location).id
    @book_location = create(:book_location, book_id: book_id, location_id: location_id)
  end

  it 'can get one book by id and show the locations' do
    get "/api/v1/books/#{book_id}"

    book = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_success
    expect(book[:id]).to eq book_id
    expect(book[:title]).to eq "fake title"
    expect(book[:genre]).to eq "fake genre"
    expect(book[:locations]).to be_a Array
    expect(book[:locations].first).to eq "fake location"
  end

  it 'can get a location and show all the books in that location' do
    get "/api/v1/locations/#{location_id}"

    location = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_success
    expect(location[:id]).to eq location_id
    expect(location[:name]).to eq "fake location"
    expect(location[:books]).to be_a Array
    expect(location[:books].first).to be_a Hash
    expect(location[:books].first[:id]).to eq book_id
    expect(location[:books].first[:title]).to eq "fake title"
    expect(location[:books].first[:genre]).to eq "fake genre"
  end
end
