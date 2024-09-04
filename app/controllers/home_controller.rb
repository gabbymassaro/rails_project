class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[homepage]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def homepage
    return unless user_signed_in?

    @user = current_user
  end
end
