class JobsController < ApplicationController
  def new
    puts '***************'
    puts params.inspect
    puts '***************'
    @job = Job.create
  end

  def create
    puts '***************'
    puts params.inspect
    puts '***************'
    @job = Job.new(job_params)
    get_job_shipper_id
    # get_boat_id
    @job.save
    p @job.errors.full_messages
  end

  def edit
  end

  def show

  end

  def destroy
  end

  private

  def job_params
      params.require(:job).permit(:id, :title, :description, :origin, :destination, :cost, :containers_needed, :shipper_id, :boat_id)
  end

end
