# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png')
pokemon = Pokemon.new(name: 'Bulbasaur', description: "For some time after its birth, it grows by gaining nourishment from the seed on its back.", type:"grass", price_per_day: 50)
pokemon.photo.attach(io: file, filename: 'Bulbasaur.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png')
pokemon = Pokemon.new(name: 'Charizard', description: "It is said that Charizards fire burns hotter if it has experienced harsh battles.", type:"fire", price_per_day: 176)
pokemon.photo.attach(io: file, filename: 'Charizard.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png')
pokemon = Pokemon.new(name: 'Beedrill', description: "It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.", type:"bug", price_per_day: 76)
pokemon.photo.attach(io: file, filename: 'Beedrill.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png')
pokemon = Pokemon.new(name: 'Pikachu', description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", type:"electro", price_per_day: 134)
pokemon.photo.attach(io: file, filename: 'Pikachu.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png')
pokemon = Pokemon.new(name: 'Nidoran', description: "The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.", type:"poison", price_per_day: 34)
pokemon.photo.attach(io: file, filename: 'Nidoran.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png')
pokemon = Pokemon.new(name: 'Clefairy', description: "It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.", type:"fairy", price_per_day: 86)
pokemon.photo.attach(io: file, filename: 'Clefairy.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png')
pokemon = Pokemon.new(name: 'Oddish', description: "If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.", type:"grass", price_per_day: 67)
pokemon.photo.attach(io: file, filename: 'Oddish.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/051.png')
pokemon = Pokemon.new(name: 'Dugtrio', description: "A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.", type:"ground", price_per_day: 104)
pokemon.photo.attach(io: file, filename: 'Dugtrio.png', content_type: 'image/png')

file = URI.open('https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png')
pokemon = Pokemon.new(name: 'Meowth', description: "It loves to collect shiny things. If it’s in a good mood, it might even let its Trainer have a look at its hoard of treasures.", type:"normal", price_per_day: 54)
pokemon.photo.attach(io: file, filename: 'Meowth.png', content_type: 'image/png')