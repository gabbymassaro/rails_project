class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[homepage]
  def homepage
    return unless user_signed_in?

    @user = current_user
  end

  def profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    if @user.update(user_params)
      redirect_to profile_path, notice: "Profile updated successfully."
    else
      render :profile
    end
  end

private

  def user_params
    params.require(:user).permit(:image)
  end
end
