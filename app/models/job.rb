class Job < ApplicationRecord
  belongs_to :shipper
  has_many :boats, through: :boat_jobs
  validates_uniqueness_of :title

end
