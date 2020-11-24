class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pokemons = Pokemon.all
  end

  def show
    set_pokemon
    @booking = Booking.new
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      render 'new'
    end
  end

  def destroy
    set_pokemon.destroy
    redirect_to dashboard_path
  end

  def edit
    set_pokemon
  end

  def update
    set_pokemon
    @pokemon.update(pokemon_params)
    redirect_to pokemon_path(@pokemon)
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :description, :pokemon_class, :photo, :price_per_day)
  end
end
