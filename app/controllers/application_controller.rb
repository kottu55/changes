class ApplicationController < ActionController::Base


    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:e_mail, :account_name, :area_code, :birth_date])
    end

end
