class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    self.class.all << self 
  end
  def self.all
    @@all
  end

  def self.total_price
    self.all.sum {|p| p.price}
  end 

end
