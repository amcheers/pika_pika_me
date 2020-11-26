class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @pokemons = Pokemon.take(6)
  end

  def dashboard
    @owned_pokemons = current_user.pokemons
    @bookings = current_user.bookings
    @date = Date.today

    @upcoming = []
    @past = []
    @bookings.each do |booking|
      if booking.start_date >= @date
        @upcoming << booking
      else
        @past << booking
      end
    end
  end
end
