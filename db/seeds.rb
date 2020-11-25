# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "cleaning database"
Pokemon.destroy_all


POKEMONS = [
  {name: 'Pikachu', description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", pokemon_class:"electro", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png"},
  {name: 'Nidoran', description: "The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.", pokemon_class:"poison", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png"},
  {name: 'Clefairy', description: "It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.", pokemon_class:"fairy", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png"},
  {name: 'Oddish', description: "If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.", pokemon_class:"grass", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png"},
  {name: 'Dugtrio', description: "A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.", pokemon_class:"ground", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/051.png"}  ,
  {name: 'Meowth', description: "It loves to collect shiny things. If it’s in a good mood, it might even let its Trainer have a look at its hoard of treasures.", pokemon_class:"normal", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png"},
  {name: 'Beedrill', description: "It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.", pokemon_class:"bug", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png"},
  {name: 'Charizard', description: "It is said that Charizards fire burns hotter if it has experienced harsh battles.", pokemon_class:"fire", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png"},
  {name: 'Bulbasaur', description: "For some time after its birth, it grows by gaining nourishment from the seed on its back.", pokemon_class:"grass", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"},
  {name: 'Geowaz', description: "After it has shed its skin, its body becomes soft and light. However, when it comes into contact with the air, it immediately hardens again.", pokemon_class:"rock", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/076.png"}
]

User.create(email: "test@user.com", password: "123456", address: "pokemonstreet 5", first_name: "Ash", last_name: "Ketchum")
User.create(email: "test@user2.com", password: "123456", address: "pikachuway 46", first_name: "Serena", last_name: "Mayuki")

POKEMONS.each do |pokemon_hash|
  file = URI.open(pokemon_hash[:link])
  pokemon = Pokemon.new(
    name: pokemon_hash[:name],
    description: pokemon_hash[:description],
    user: User.all.sample,
    pokemon_class: pokemon_hash[:pokemon_class],
    price_per_day: rand(1..300)
  )
  pokemon.photo.attach(io: file, filename: "#{pokemon_hash[:name]}.png", content_type: 'image/png')
  pokemon.save!
end
