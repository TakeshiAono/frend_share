class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new,:create]

  def new
    session.delete(:user_id)
  end
  
  def create
    
    user = User.find_by(email: params[:session][:email].downcase)
    session[:user_id] = user.id
    # current_user
    redirect_to images_path
  end

  private
  def post_params
    params.require(:session).permit(:name, :email, :password_digest)
  end  
end
