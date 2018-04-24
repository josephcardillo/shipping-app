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

  def joincreate
    @boat_job = BoatJob.create(boat_jobs_params)
  end

  def joinshow
    @boat_job = BoatJob.find(params[:id])
  end

  def dashboard
    @boats = Boat.all
    @boat = @boats.find(params[:id])
    @jobs = Job.all
    @job = Job.new
    @shipper = Shipper.find(params[:id])

  end

  def destroy
  end

  private

  def boat_jobs_params
      params.require(:boat_job).permit(:boat_id, :job_id)
  end

end
