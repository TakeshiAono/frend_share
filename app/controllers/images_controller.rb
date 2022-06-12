class ImagesController < ApplicationController
  def index
    @pictures = Picture.all
  end
end
