class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery with: :exception

  before_action :configure_permited_params, if: :devise_controller?

  def configure_permited_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
