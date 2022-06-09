class ImagesController < ApplicationController
  # skip_before_action :login_required, only: [:index, :create]
  def index
    @images = Image.all
    @images2 ={name:"aono"}
  end

  def new
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
