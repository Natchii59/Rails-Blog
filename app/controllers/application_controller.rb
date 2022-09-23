class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  rescue_from CanCan::AccessDenied do |exception|
    puts "==="
    puts exception
    puts "==="
    redirect_to root_path, alert: "Vous n'avez pas les droits pour accéder à cette page"
  end
end
