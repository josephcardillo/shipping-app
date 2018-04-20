class Shipper < ApplicationRecord
  # Shipper authentication
  # protect_from_forgery
  # before_action :authenticate_shipper!
  # protect_from_forgery prepend: true

  has_many :boats
  has_many :jobs

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
end
