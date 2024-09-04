class UsersController < ApplicationController
  before_action :authenticate_user!

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

  def edit_favorite_genres
    @user = current_user
    @genres = Genre.all
  end

  def update_favorite_genres
    @user = current_user
    if @user.update(genre_ids: params[:user][:genre_ids])
      redirect_to profile_path, notice: "Favorite genres updated successfully."
    else
      render :edit_favorite_genres
    end
  end

private

  def user_params
    params.require(:user).permit(:image)
  end
end
