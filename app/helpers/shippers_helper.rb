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

    # def check_boat_job_exists
    #   @boat_job.where boat_id == job_id
    #   return true
    # end
end
