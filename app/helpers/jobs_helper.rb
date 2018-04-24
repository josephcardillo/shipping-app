module JobsHelper

  def jobs_select_array
    arr = []
    Job.all.each do |a|
      arr << [a.title, a.id]
    end
    return arr
  end
end
