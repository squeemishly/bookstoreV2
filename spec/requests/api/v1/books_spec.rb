require 'rails_helper'

describe 'Bookstore API' do
  it 'can get one book by id and show the location' do
    id = create(:book).id

    get "/api/v1/books/#{id}"

    book = JSON.parse(response.body)

    expect(response).to be_success
    expect(book["id"]).to eq id
    expect(book["title"]).to eq "fake title"
    expect(book["location"]).to eq "fake location"
  end
end
