class ApplicationController < ActionController::Base
  include ShippersHelper
  # Insert before action here configure permitted parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :avatar])
  end
end
