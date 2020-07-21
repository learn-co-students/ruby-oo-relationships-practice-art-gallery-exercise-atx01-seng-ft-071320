require_relative '../config/environment.rb'

moma = Gallery.new("MOMA", "NYC")
lacma = Gallery.new("LACMA", "LA")
mfah = Gallery.new("MFAH", "Houston")
klimt = Artist.new("Gustav Klimt", 15)
ernst = Artist.new("Max Ernst", 18)
ross = Artist.new("Bob Ross", 25)
klimt.create_painting("The Kiss", 5000, moma)
ernst.create_painting("Forest and Dove", 6000, lacma)
ross.create_painting("Happy Little Trees", 9000, mfah)
ross.create_painting("Kittens", 1000, lacma)
# kiss = Painting.new("The Kiss", 5000, moma, self)
# forest = Painting.new("Forest and Dove", 6000, lacma, self)
# trees = Painting.new("Happy Little Trees", 8000, mfah)


binding.pry

puts "Bob Ross rules."
