module ShippersHelper
    def get_boat_shipper_id
      @boat.shipper_id = current_shipper.id
    end

    def get_job_shipper_id
      @job.shipper_id = current_shipper.id
    end

    def args(x, y)
    method(__method__).parameters.map do |_, name|
      binding.local_variable_get(name)
    end

  end
end
