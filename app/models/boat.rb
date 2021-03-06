class Boat < ApplicationRecord
  belongs_to :shipper
  has_many :boat_jobs, dependent: :destroy
  has_many :jobs, through: :boat_jobs
  mount_uploader :avatar, AvatarUploader

  validates_uniqueness_of :name
end
