class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(artist, title, price, gallery)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map do |painting|
      painting.price
    end.sum
  end

end
