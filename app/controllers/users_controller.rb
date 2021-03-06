class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def new
  end

  def create
    User.create(post_params)
    redirect_to new_session_path
  end

  private
  def post_params
    params.require(:users).permit(:name, :email, :password_digest, :password)
  end
end
