class Job < ApplicationRecord
  belongs_to :shipper
  has_many :boat_jobs, dependent: :destroy
  has_many :boats, through: :boat_jobs
  validates_uniqueness_of :title

  validates :description, length: { minimum: 50, too_short: "Minimum of %{count} characters is required for the job description." }

  validates :cost, numericality: { greater_than: 1000 }

  validates :cost, numericality: { only_integer: true }

end
