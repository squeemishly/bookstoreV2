class Api::V1::LocationsController < ApplicationController
  def show
    payload = Location.find_books(params[:id])
    render json: payload
  end
end
