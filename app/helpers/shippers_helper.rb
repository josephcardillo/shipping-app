module ShippersHelper
  def get_boat_shipper_id
    @boat.shipper_id = current_shipper.id
  end

  def get_job_shipper_id
    @job.shipper_id = current_shipper.id
  end
end
