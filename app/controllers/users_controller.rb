class UsersController < ApplicationController
  def new
    
  end
  def create
    User.create(post_params)
    redirect_to new_session_path
  end

  private
  def post_params
    params.require(:users).permit(:name, :email, :password_digest)
  end
end
