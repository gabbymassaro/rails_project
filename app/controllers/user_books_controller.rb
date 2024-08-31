class UserBooksController < ApplicationController
  def create
    @user_book = current_user.user_books.new(book_id: params[:book_id])

    if @user_book.save
      redirect_to profile_path
    else
      redirect_to books_path
    end
  end
end
