class Api::V1::LocationsController < ApplicationController
  def show
    payload = Location.find_books(params[:id])
    render json: payload
  end

  def update
    payload = BookLocation.move_book(params[:book_location_id], params[:id])
    render json: payload
  end
end
