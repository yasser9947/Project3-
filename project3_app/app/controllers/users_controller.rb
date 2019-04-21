class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  user_signed_in?
current_user
  end
  def home
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    puts params
    @user = User.create(user_params)
    redirect_to @user
  end
  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :city)
    end
end
