class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @pokemons = Pokemon.take(6)
  end

  def dashboard
    @bookings = current_user.bookings
    @owned_pokemons = current_user.pokemons
    @date = Date.today
    raise
  end
end
