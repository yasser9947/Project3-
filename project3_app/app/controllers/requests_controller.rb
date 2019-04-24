class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
       @request = Request.new
  end

  def create
    puts params
    @request = Request.create(request_params)
    @request.caredom_id = current_user.id
    @request.caregiver_id = 1
    p @request.inspect  
    p @request.errors.full_messages
    puts current_user.id
    @request.save
    redirect_to @request
  end
 
  def show
    @request = Request.find(params[:id])
    @request.caregiver_id = current_user.id
    @request.save
  end

  def edit
  end

    private
    def request_params
      params.require(:request).permit(:age, :gender, :note, :request_status, :explainsituation, :allergies, :date, :caregiver_id, :caredom_id)
    end
end


