class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @owned_pokemons = current_user.pokemons
  end
end
