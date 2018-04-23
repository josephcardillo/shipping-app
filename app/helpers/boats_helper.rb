module BoatsHelper

  def boat_details
    @boat = Boat.find(params[:id])
    "#{@boat.name}"
    "#{@boat.location}"
  end
end
