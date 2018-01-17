class Api::V1::BooksController < ApplicationController
  def show
    render json: Book.find(params[:id])
  end
end
