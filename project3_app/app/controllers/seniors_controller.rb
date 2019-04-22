class SeniorsController < ApplicationController
  before_action :authenticate_user!
  def index 
    @seniors = Senior.all
  end

  def new
    @senior = Senior.new
  end

  def show
    @senior = Senior.find(params[:id])
  end

  def edit
  end

  def create
    puts params
    @senior = Senior.create(senior_params)
    @senior.user_id = current_user.id
    @senior.save
    redirect_to  @senior
  end

  def update
  end

  private
    def senior_params
      params.require(:senior).permit(:name, :user_ids => [])
    end
end