class ShippersController < ApplicationController
  def show
    @shipper = Shipper.find(params[:id])
  end

  def index
  end

  def edit
  end

  def create
  end

  def destroy
  end
end
