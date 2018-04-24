module BoatsHelper

  def boat_details
    @boat = Boat.find(params[:id])
    "#{@boat.name}"
    "#{@boat.location}"
  end

  def boats_select_array
    arr = []
    Boat.all.each do |a|
      arr << [a.name, a.id]
    end
    return arr
  end
end
