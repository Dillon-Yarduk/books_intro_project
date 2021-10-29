class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :genres).page(params[:page])
  end

  def show
    @book = Book.includes(:genres).find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @books = Book.where("title LIKE ?", wildcard_search)
  end
end
