module ShippersHelper
  def get_shipper_id
    @boat.shipper_id = current_shipper.id
  end
end
