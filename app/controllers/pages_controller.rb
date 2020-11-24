class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @pokemons = Pokemon.all
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @owner_pokemons = @user.pokemons
  end
end
