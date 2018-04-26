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


    def boats_location
      arr = ['Philadelphia', 'New York', 'Shanghai', 'Hong Kong', 'Hamburg', 'Los Angeles', 'Ho Chi Minh']
      return arr
    end


end
