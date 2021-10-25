class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher)
  end

  def show
    @book = Book.find(params[:id])
  end
end
