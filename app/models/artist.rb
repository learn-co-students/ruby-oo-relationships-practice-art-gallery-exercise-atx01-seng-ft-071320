class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.sum.to_i
  end

  def paintings_per_year
    paintings.length/years_experience.to_f
  end

  def self.most_prolific
    top_dog =
    numbers = 0
    self.all.each do |artist|
      if artist.paintings_per_year > numbers
        top_dog = artist
        numbers = artist.paintings_per_year
      end
    end
    top_dog
  end

end
