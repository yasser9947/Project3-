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
    # @user = User.find(params[:id])
    # city = User.find(params[:city_ids])
    # puts city 
    # @user.cities.push(city)
  end
  def create
    puts params
    @user = User.new!(user_params)
    puts @user    
    @user.save
    redirect_to @user
  end
  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :city_id , :care)
    end
end
