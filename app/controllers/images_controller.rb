class ImagesController < ApplicationController
  # skip_before_action :login_required, only: [:index, :create]
  def index
    @images = Image.all
  end

  def new
    @images = Image.new
  end
  
  def create
  end
  
  def edit
  end
  
  def show
  end

  def update

  end

  def confirm
  end


  def destroy
 
  end
end
