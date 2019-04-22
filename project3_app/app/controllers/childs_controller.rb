class ChildsController < ApplicationController
  before_action :authenticate_user!
  def index 
    @childs = Child.all
  end

  def new
    @child = Child.new
  end

  def show
    @child = Child.find(params[:id])
  end

  def edit
  end

  def create
    puts params
    @child = Child.create(child_params)
    @child.user_id = current_user.id
    @child.save
    redirect_to @child 
  end

  def update
  end

  private
    def child_params
      params.require(:child).permit(:name, :user_ids => [])
    end
end