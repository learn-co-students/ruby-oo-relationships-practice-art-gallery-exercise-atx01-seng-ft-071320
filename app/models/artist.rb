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
    Painting.new(title, price, gallery, self)
  end 

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end

  def cities
    galleries.map {|g| g.city}
  end

  def self.total_experience
    self.all.sum {|a| a.years_experience}
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end 
end 