require_relative '../config/environment.rb'

anna = Artist.new("Anna Reed", 15)
picasso = Artist.new("Pablo Picasso", 200)

louvre = Gallery.new("The Louvre", "Paris")
guggenheim = Gallery.new("Guggenheim", "New York")

still_life = Painting.new(anna, "Still Life", 200000, louvre)
portrait = Painting.new(picasso, "Portrait", 1000000, louvre)

binding.pry

puts "Bob Ross rules."
