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
    get_shipper_id
    @boat.save
    p @boat.errors.full_messages
  end

  def show
    # @boat = Boat.find(params[:id])
  end

  def destroy
  end

  def edit
  end

  private

  def boat_params
      params.require(:boat).permit(:id, :name, :container_volume, :location, :shipper_id, :job_id, :created_at, :updated_at)
  end

end
