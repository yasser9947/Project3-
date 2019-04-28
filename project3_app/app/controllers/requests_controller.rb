# frozen_string_literal: true

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
    @request.caregiver_id = current_user.id
    @request.request_status = 0
    @request.gender = current_user.name
    # @request.request_status = 0
    # @request.gender = "male",
    # @request.explainsituation = "test"
    # @request.note = "test"
    # caredom_id: 19, caregiver_id: nil
    p @request.inspect
    p @request.errors.full_messages
    puts current_user.id
    @request.save
    redirect_to requests_path
  end

  def show
    @request = Request.find(params[:id])
    @request.caregiver_id = current_user.id
    @request.save
  end

  def edit; end

  def stat_update
    @request = Request.find(params[:id])
    # p params[:val]
    @request.request_status = params[:val]
    if @request.caregiver_id ==  @request.caredom_id
    @request.caregiver_id = current_user.id
    @request.name = current_user.name
    end
    @request.save

    # must return msg or boolean
  end

  private

  def request_params
    params.require(:request).permit(:age, :gender, :note, :request_status, :explainsituation, :allergies, :date, :caregiver_id, :caredom_id)
  end
end
