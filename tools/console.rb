require_relative '../config/environment.rb'

dave = Artist.new("Dave", 5)
darren = Artist.new("Dean", 10)
dawn = Artist.new("Dawn", 15)

dma = Gallery.new("DMA", "Dallas")
kimbel = Gallery.new("Kimbel", "Fort Worth")

boy_with_hat = Painting.new("Boy with Hat", 120, dave, dma)
girl_with_shovel = Painting.new("Girl with Shovel", 300, darren, kimbel)
blossom = Painting.new("Blossom", 200, dawn, kimbel)
fire = Painting.new("Fire", 550, dawn, dma)
icy_river = Painting.new("Icy River", 80, darren, dma)
farmstead = Painting.new("Farmstead", 250, dave, kimbel)


binding.pry

puts "Bob Ross rules."
