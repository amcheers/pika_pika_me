class AddReference < ActiveRecord::Migration[6.0]
  def change
    add_reference pokemons, :kind, foreign_key: true
  end
end
