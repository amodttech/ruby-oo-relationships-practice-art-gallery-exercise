class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience.to_i
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #Returns an array all the paintings by an artist
    Painting.all.select {|works| works.artist == self}
  end

  def galleries
    #Returns an array of all the galleries that an artist has paintings in
    paintings.map {|painting| painting.gallery}
  end

  def cities
    #Return an array of all cities that an artist has paintings in
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    #Returns an integer that is the total years of experience of all artists
    total = 0
    @@all.each {|artists| total += artists.years_experience}
    total
  end

  def self.most_prolific
    #Returns an instance of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    #(title, price, artist, gallery)
    #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end






end
