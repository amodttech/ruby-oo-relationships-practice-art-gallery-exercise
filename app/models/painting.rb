class Painting

  attr_reader :title, :price, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    bank = 0
    @@all.each {|paintings| bank += paintings.price}
    bank
  end

end
