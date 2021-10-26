class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :genres).page(params[:page])
  end

  def show
    @book = Book.includes(:genres).find(params[:id])
  end
end
