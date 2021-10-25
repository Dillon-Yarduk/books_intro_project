class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher)
  end

  def show; end
end
