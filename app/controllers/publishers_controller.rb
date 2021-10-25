class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show; end
end
