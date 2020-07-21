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

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  def self.total_experience
    self.all.map do |artist|
      artist.years_experience
    end.sum
  end

  def self.most_prolific
    self.all.max do |artista, artistb|
      (artista.paintings.count.to_f/artista.years_experience.to_f) <=> (artistb.paintings.count.to_f/artistb.years_experience.to_f)
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end

end
