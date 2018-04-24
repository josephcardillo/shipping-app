class BoatsController < ApplicationController
  def new
    puts '***************'
    puts params.inspect
    puts '***************'
    @boat = Boat.create
    # @boat.save
    # @post.user_id = session[:user_id]
    # @boat.save
    # flash.notice = "Your post titled '#{@post.title}' has been created!"
    # redirect_to boat_path(@boat)
  end

  def create
    # @boat = Boat.all
    puts '***************'
    puts params.inspect
    puts '***************'
    @boat = Boat.new(boat_params)
    get_boat_shipper_id
    @boat.save
    p @boat.errors.full_messages
  end

  def show
    @boat = Boat.find(params[:id])
  end

def update
  @boat = Boat.find(params[:id])
  @boat.update(boat_params)
  redirect_to boat_path(@boat)
end

def destroy
  p params
  boat = Boat.find(params[:id])
  if boat.destroy
    redirect_to new_boat_path
  else
    p job.errors.full_messages
    redirect_to show_path(boat)
  end
end

  def edit
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
      params.require(:boat).permit(:id, :name, :container_volume, :location, :shipper_id, :job_id, :created_at, :updated_at)
  end

end
