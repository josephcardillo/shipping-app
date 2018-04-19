class Shipper < ApplicationRecord
  # Shipper authentication
  # protect_from_forgery
  # before_action :authenticate_shipper!
  # protect_from_forgery prepend: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
