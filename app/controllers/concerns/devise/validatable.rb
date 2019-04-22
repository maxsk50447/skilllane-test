# app/controllers/concerns/devise/validatable.rb

module Devise::Validatable
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:first_name,
                                             :last_name,
                                             :nick_name,
                                             :birthday,
                                             :gender,
                                             :role])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:first_name,
                                             :last_name,
                                             :nick_name,
                                             :birthday,
                                             :gender,
                                             :role])
  end
end