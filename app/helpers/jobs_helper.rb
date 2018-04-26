module JobsHelper

  def jobs_select_array
    arr = []
    Job.all.each do |job|
      if job.shipper_id == current_shipper.id
      arr << [job.title, job.id]
      end
    end
    return arr
  end
end
