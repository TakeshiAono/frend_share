class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new,:create]

  def new
    session.delete(:user_id)
  end
  
  def create    
    user = User.find_by(email: params[:session][:email].downcase)
byebug
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to images_path
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
    # current_user
  end

  private
  def post_params
    params.require(:session).permit(:name, :email, :password_digest)
  end  
end
