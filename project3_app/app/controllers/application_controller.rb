class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:care, :name, :email, :phone, :city_id, :nationality])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :phone, :email, :city_id, :nationality, :city])
    end
end
