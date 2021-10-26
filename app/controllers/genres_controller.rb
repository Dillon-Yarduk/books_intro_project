class GenresController < ApplicationController
  def index
    @genres = Genre.all.page(params[:page])
  end

  def show
    @genre = Genre.includes(:books).find(params[:id])
  end
end
