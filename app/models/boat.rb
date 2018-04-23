class Boat < ApplicationRecord
  belongs_to :shipper
  has_many :jobs
  mount_uploader :avatar, AvatarUploader
end
