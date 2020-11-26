class RemovePokemonClass < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :pokemon_class
  end
end
