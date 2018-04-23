class ShippersController < ApplicationController
  def show
    @shipper = Shipper.find(params[:id])
    @boats = Boat.all
  end

  def index
    @boats = Boat.all
  end

  def edit

  end

  def create
    @shipper = Shipper.find(params[:id])

  end

  def dashboard
    @boats = Boat.all
    @boat = @boats.find(params[:id])
    @jobs = Job.all
    @job = @jobs.find(params[:id])
    @shipper = Shipper.find(params[:id])

  end

  def destroy
  end
end
