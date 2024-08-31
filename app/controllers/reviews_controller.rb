class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to book_path(@review.book_id)
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:user_id, :book_id, :rating, :content)
  end
end
