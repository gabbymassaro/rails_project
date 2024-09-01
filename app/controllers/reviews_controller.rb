class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)

    if @review.save
      redirect_to book_path(@review.book_id)
    else
      flash.now[:alert] = @review.errors.full_messages.to_sentence
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:user_id, :book_id, :rating, :content)
  end
end
