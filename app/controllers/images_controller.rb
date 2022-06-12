class ImagesController < ApplicationController
  # skip_before_action :login_required, only: [:index, :create]
  def index
    @pictures = Picture.all
  end

  # def new
  #   @images = Picture.new
  #   render new_picture_path
  # end
  
  # def create
  # end
  
  # def edit
  # end
  
  # def show
  # end

  # def update

  # end

  # def confirm
  # end


  # def destroy
 
  # end
end
