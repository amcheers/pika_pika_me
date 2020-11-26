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
  {name: 'Unown ', description: "This Pokémon is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various Unown. Research into this topic is ongoing but nothing is known.", pokemon_class:"physic", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/201.png"},
  {name: 'Aipom', description: "As it did more and more with its tail, its hands became clumsy. It makes its nest high in the treetops.", pokemon_class:"normal", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/190.png"},
  {name: 'Sudowoodo', description: "If a tree branch shakes when there is no wind, it’s a Sudowoodo, not a tree. It hides from the rain.", pokemon_class:"rock", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/185.png"},
  {name: 'Mareep', description: "Clothing made from Mareep’s fleece is easily charged with static electricity, so a special process is used on it.", pokemon_class:"electric", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/179.png"},
  {name: 'Tyrogue', description: "It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.", pokemon_class:"fighting", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/236.png"},
  {name: 'Mewtwo', description: "Its DNA is almost the same as Mew’s. However, its size and disposition are vastly different.", pokemon_class:"physic", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/150.png"},
  {name: 'Dragonair', description: "This Pokémon lives in pristine oceans and lakes. It can control the weather, and it uses this power to fly into the sky, riding on the wind.", pokemon_class:"dragon", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/148.png"},
  {name: 'Snorlax', description: "It is not satisfied unless it eats over 880 pounds of food every day. When it is done eating, it goes promptly to sleep.", pokemon_class:"normal", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png"},
  {name: 'Gyarados', description: "It has an extremely aggressive nature. The Hyper Beam it shoots from its mouth totally incinerates all targets.", pokemon_class:"water", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/130.png"},
  {name: 'Ditto ', description: "It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.", pokemon_class:"normal", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/132.png"},
  {name: 'Magmar', description: "Magmar dispatches its prey with fire. But it regrets this habit once it realizes that it has burned its intended prey to a charred crisp.", pokemon_class:"fire", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/126.png"},
  {name: 'Tangela', description: "Hidden beneath a tangle of vines that grows nonstop even if the vines are torn off, this Pokémon’s true appearance remains a mystery.", pokemon_class:"grass", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/114.png"},
  {name: 'Hitmonchan', description: "Its punches slice the air. They are launched at such high speed, even a slight graze could cause a burn.", pokemon_class:"fighting", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/107.png"},
  {name: 'Exeggutor', description: "Each of Exeggutor’s three heads is thinking different thoughts. The three don’t seem to be very interested in one another.", pokemon_class:"grass", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/103.png"},
  {name: 'Drowzee', description: "If you sleep by it all the time, it will sometimes show you dreams it had eaten in the past.", pokemon_class:"physic", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/096.png"},
  {name: 'Magneton', description: "This Pokémon is three Magnemite that have linked together. Magneton sends out powerful radio waves to study its surroundings.", pokemon_class:"electric", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/082.png"},
  {name: 'Pikachu', description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", pokemon_class:"electro", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png"},
  {name: 'Nidoran', description: "The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.", pokemon_class:"poison", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png"},
  {name: 'Clefairy', description: "It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.", pokemon_class:"fairy", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png"},
  {name: 'Oddish', description: "If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.", pokemon_class:"grass", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png"},
  {name: 'Dugtrio', description: "A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.", pokemon_class:"ground", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/051.png"}  ,
  {name: 'Meowth', description: "It loves to collect shiny things. If it’s in a good mood, it might even let its Trainer have a look at its hoard of treasures.", pokemon_class:"normal", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png"},
  {name: 'Beedrill', description: "It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.", pokemon_class:"bug", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png"},
  {name: 'Charizard', description: "It is said that Charizards fire burns hotter if it has experienced harsh battles.", pokemon_class:"fire", link:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png"},
  {name: 'Bulbasaur', description: "For some time after its birth, it grows by gaining nourishment from the seed on its back.", pokemon_class:"grass", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"},
  {name: 'Geowaz', description: "After it has shed its skin, its body becomes soft and light. However, when it comes into contact with the air, it immediately hardens again.", pokemon_class:"rock", link: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/076.png"},
]

puts "creating users"
User.create(email: "test@user.com", password: "123456", address: "ijsbaanpad 9, Amsterdam", first_name: "Ash", last_name: "Ketchum")
User.create(email: "test@user2.com", password: "123456", address: "graafschapstraat 15, Amsterdam", first_name: "Serena", last_name: "Mayuki")
User.create(email: "test@user3.com", password: "123456", address: "Museumpark 18, Rotterdam", first_name: "Rocko", last_name: "Ueda")
User.create(email: "test@user4.com", password: "123456", address: "Oostzaanstraat 45, Amsterdam", first_name: "Lucia", last_name: "Megumi")
User.create(email: "test@user5.com", password: "123456", address: "August Allebéplein 12, Amsterdam", first_name: "Citro", last_name: "Kaji")
User.create(email: "test@user6.com", password: "123456", address: "Woestduinstraat 76, Amsterdam", first_name: "Lilia", last_name: "Yuki")

puts "creating pokemons"
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

puts "Done!"
