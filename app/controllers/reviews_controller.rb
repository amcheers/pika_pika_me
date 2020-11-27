class ReviewsController < ApplicationController
  def index
    @booking = Booking.find(params[:booking_id])
    @pokemon = Pokemon.find(@booking.pokemon_id)
    @reviews = @pokemon.bookings.map do |booking|
      booking.review
    end
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end
  
  
  
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show'
    end
  end

  def destroy
    @review = Review.find(params[:review_id])
    @review.destroy
    redirect_to booking_reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
