class JobsController < ApplicationController

  def index
    @jobs = Job.all.reverse
  end

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
    @job.title.downcase
    if @job.save
    flash.notice = "Your job '#{@job.title}' has been created!"
  else
    flash.notice = "Your job title has been taken! Please enter a new title."
  end
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
    p params
    job = Job.find(params[:id])
    if job.destroy
      redirect_to new_job_path
    else
      p job.errors.full_messages
      redirect_to show_path(job)
    end
  end

  private

  def job_params
      params.require(:job).permit(:id, :title, :description, :origin, :destination, :cost, :containers_needed, :shipper_id, :boat_id)
  end
end
