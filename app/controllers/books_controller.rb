class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :genres)
  end

  def show
    @book = Book.includes(:genres).find(params[:id])
  end
end
