class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.includes(:books).find(params[:id])
  end
end
