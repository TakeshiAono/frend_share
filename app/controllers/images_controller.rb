class ImagesController < ApplicationController
  # skip_before_action :login_required, only: [:index, :create]
  def index
    @feeds = Feed.all
  end

  # def new
  #   @images = Feed.new
  #   render new_feed_path
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
