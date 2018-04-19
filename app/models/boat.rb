class Boat < ApplicationRecord
  belongs_to :shipper
  has_many :jobs
end
