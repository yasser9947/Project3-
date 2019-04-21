class UsersController < ApplicationController
  def index
  user_signed_in?
current_user
  end
  def home
  end
end
