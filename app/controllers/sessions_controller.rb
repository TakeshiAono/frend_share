class SessionsController < ApplicationController

  def new
    
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    session[:user_id] = user[:id]
    redirect_to images_path
    byebug
  end

  private
  def post_params
    params.require(:session).permit(:name, :email, :password_digest)
  end  
end
