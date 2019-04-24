class RequestsController < ApplicationController
  def index
    @request = Request.all
  end

  def new
       @request = Request.new
  end

  def create
    puts params
    @request = Request.new(request_params)
    puts @request  
    @request.save
    redirect_to @request
  end

  def show
  end

  def edit
  end

    private
    def request_params
      params.require(:request).permit(:name, :city_id , :care)
    end
end


