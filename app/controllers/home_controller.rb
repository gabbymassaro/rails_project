class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[homepage]
  def homepage
    return unless user_signed_in?

    @user = current_user
  end

  def profile
    @user = current_user
  end
end
