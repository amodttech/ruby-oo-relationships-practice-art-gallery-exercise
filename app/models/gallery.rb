class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #Returns an array of all paintings in a gallery
    Painting.all.select {|paint| paint.gallery == self}
  end

  def artists
    #Returns an array of all artists that have a painting in a gallery
    paintings.map {|paint| paint.artist}
  end

  def artist_names
    #Returns an array of the names of all artists that have a painting in a gallery
    artists.map {|repped_artists| repped_artists.name}
  end

  def most_expensive_painting
    #Returns an instance of the most expensive painting in a gallery
    paintings.max_by do |painting|
      painting.price
    end
  end




end
