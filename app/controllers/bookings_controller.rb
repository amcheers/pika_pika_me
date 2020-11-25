class BookingsController < ApplicationController
  before_action :authenticate_user!
 
  def create
    @booking = Booking.new(booking_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking.pokemon = @pokemon
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render "pokemons/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to pokemons_path(@booking.pokemon)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :pokemon_id, :user_id)
  end
end
