class ProfilesController < ApplicationController
  def profile
    @user = current_user
  end

  def update_avatar
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
