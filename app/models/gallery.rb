class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self 
  end
  
  def self.all
    @@all
  end 

  def paintings
    Painting.all.select {|paintings| paintings.gallery == self}
  end 

  def artists
    paintings.map {|p| p.artist}
  end

  def artist_names
    paintings.map {|p| p.artist.name}
  end


  def most_expensive_painting
    Painting.all.max {|a, b| a.price <=> b.price}
  end
end
