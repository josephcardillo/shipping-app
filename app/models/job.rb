class Job < ApplicationRecord
  belongs_to :shipper
  has_many :boats 
end
