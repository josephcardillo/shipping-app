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
    @boat_job = BoatJob.new(boat_jobs_params)
    @exists = BoatJob.where(["boat_id = ? and job_id = ?", @boat_job.boat_id, @boat_job.job_id]).first
    @b = BoatJob.all
    if @exists && @boat_job.job.containers_needed <= @boat_job.boat.container_volume
      respond_to do |format|
        format.html{ redirect_to shipper_dash_path, :notice => "A job assignment already exists for this boat."}
      end
    else
      @boat_job.save
      respond_to do |format|
        format.js
      end
    end
  end

  def joinshow
    @boat_job = BoatJob.find(params[:id])
  end

  def dashboard
    @boats = Boat.all
    @jobs = Job.all
    @job = Job.new
    @shipper = Shipper.find(params[:id])
    @boat_job = BoatJob.last
    @b = BoatJob.all
  end

  def destroy
  end

  private

  def boat_jobs_params
      params.require(:boat_job).permit(:boat_id, :job_id)
  end

end
