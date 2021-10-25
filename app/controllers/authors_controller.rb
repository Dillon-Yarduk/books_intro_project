class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.includes(:books).find(params[:id])
  end
end
