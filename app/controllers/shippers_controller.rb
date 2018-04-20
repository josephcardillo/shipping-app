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
    @jobs = Job.all
    @shipper = Shipper.find(params[:id])

  end

  def destroy
  end
end
