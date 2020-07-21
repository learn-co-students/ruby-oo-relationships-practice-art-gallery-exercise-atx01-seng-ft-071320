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
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    top_dog =
    price = 0
    paintings.each do |painting|
      if painting.price > price
        top_dog = painting
        price = painting.price
      end
    end
    top_dog
  end

end
