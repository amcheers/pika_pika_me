class BookingsController < ApplicationController
  before_action :authenticate_user!
  def create
    @booking = Booking.new(booking_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking.pokemon = @pokemon
    if @booking.save
      redirect_to pokemons_path(@pokemon)
    else
      render :new
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
