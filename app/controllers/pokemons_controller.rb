class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pokemons = Pokemon.all
  end

  def show
    set_pokemon
  end

  

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end
