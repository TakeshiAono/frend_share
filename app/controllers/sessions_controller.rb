class SessionsController < ApplicationController

  def new
    
  end
  
  def create
    byebug
    User.create(post_params)
    redirect_to images_path
  end

  private
  def post_params
    params.require(:session).permit(:name, :email, :password_digest)
  end  
end
