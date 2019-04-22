class ApplicationController < ActionController::Base
  include Pundit 
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  
  protect_from_forgery
  
  rescue_from Pundit::NotAuthorizedError do
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end

end
