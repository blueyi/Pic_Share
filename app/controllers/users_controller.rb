class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]



  def new
	@user = User.new
  end
  
  def show
	@user = User.find(params[:id])
  end

  def edit
	@user = User.find(params[:id])
  end

  def index
	@users = User.paginate(page: params[:page])
  end

  private
  def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def signed_in_user
	unless signed_in?
	  redirect_to new_user_session_path, notice: "Please sign in."
	end
  end

  def correct_user
	@user = User.find(params[:id])
	redirect_to(root_path) unless current_user == @user
  end
end
