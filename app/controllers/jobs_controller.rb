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
    @job = Job.find(params[:id])
  end

  def show
    @job = Job.find(params[:id])

  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)

    # flash.notice = "Your post titled '#{@post.title}' has been updated!"
    redirect_to job_path(@job)
  end


  def destroy
  end

  private

  def job_params
      params.require(:job).permit(:id, :title, :description, :origin, :destination, :cost, :containers_needed, :shipper_id, :boat_id)
  end
end
