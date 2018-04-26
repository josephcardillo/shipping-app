class BoatsJobsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def update
  end

  def index
    @boat_job = BoatJob.all.reverse
  end
end
