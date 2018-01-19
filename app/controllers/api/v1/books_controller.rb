class Api::V1::BooksController < ApplicationController
  def show
    payload = Book.find_book(params[:id])
    render json: payload
  end
end
