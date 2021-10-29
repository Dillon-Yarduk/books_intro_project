class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :genres).page(params[:page])
  end

  def show
    @book = Book.includes(:genres).find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    genre_id = params[:genre_id]
    @books = Book.where("title LIKE ?", wildcard_search)
    unless genre_id.empty?
      @books = @books.joins(:book_genres).where("book_genres.genre_id = ?",
                                                genre_id)
    end
  end
end
