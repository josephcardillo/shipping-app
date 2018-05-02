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
    @b = BoatJob.all
      if @boat_job.job.containers_needed > @boat_job.boat.container_volume
        flash[:notice] = "You tried to assign a job to a boat where the boat's container volume is less than the amount of containers needed to get that shit done. Please choose a boat with a greater container capacity!"
      else
      # redirect_to shipper_dash_path
        # if check_boat_job_exists?
        #   flash[:notice] = "This boat has already been assigned to a job."
        # else
          @boat_job.save
          respond_to do |format|
            format.js
          end
        # end
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
