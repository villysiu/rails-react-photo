class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # before_filter :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) do |user_params|
                user_params.permit(:email, :name, :password)
              end
              devise_parameter_sanitizer.permit(:account_update) do |user_params|
                user_params.permit(:email, :name, :password, :current_password)
              end
        end
end
