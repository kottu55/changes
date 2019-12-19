class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:account_name, :area_code, :birth_date, :account_img])
        devise_parameter_sanitizer.permit(:account_update, keys: [:account_name, :area_code, :birth_date, :account_img, :introduction])
    end

    def after_sign_out_path_for(resource)
         new_user_session_path
    end

    def after_update_path_for(resource)
         my_page_path
    end
end
