class Job < ApplicationRecord
  belongs_to :shipper
  has_many :boats
  validates_uniqueness_of :title
end
