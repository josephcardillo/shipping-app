class ApplicationController < ActionController::Base
  include ShippersHelper
  include BoatsHelper
  # Insert before action here configure permitted parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :avatar])
  end

  private

# Overwriting the sign_out redirect path method
def after_sign_out_path_for(resource_or_scope)
  new_shipper_session_path
end
end
