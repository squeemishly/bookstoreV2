class Api::V1::LocationsController < ApplicationController
  def show
    render json: Location.find(params[:id])
  end
end
