class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :price_per_day
      t.User :references

      t.timestamps
    end
  end
end
