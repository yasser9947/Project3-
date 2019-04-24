class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
       @request = Request.new
  end

  def create
    # puts params
    @request = Request.create(request_params)
    @request.caredom_id = current_user.id
    @request.request_status = 0 
    @request.gender = "male", 
    @request.explainsituation = "test" 
    @request.note = "test"
    # caredom_id: 19, caregiver_id: nil
    p @request.inspect  
    puts current_user.id
    @request.save
    # redirect_to request_path(@request)
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
  end

    private
    def request_params
      params.require(:request).permit( :age, :gender, :note, :caregiver_id, :request_status, :explainsituation, :allergies, :date, :caredom_id)
    end
end


