require_relative '../config/environment.rb'


stacy = Artist.new("Stacy", 7)
fred = Artist.new("Fred", 2)
max = Artist.new("Max", 4)
angie = Artist.new("Angie", 17)

bw = Gallery.new("Black Walls", "Tally")
gal = Gallery.new("Gal90", "Riverside")
ar = Gallery.new("Adult Robot", "Boston")

stacy.create_painting("shitty sunset", 10000, bw)
stacy.create_painting("afterglow", 3000, gal)
stacy.create_painting("excalibur", 450, bw)
fred.create_painting("bones", 3, bw)
fred.create_painting("blood", 34, ar)
max.create_painting("sunny d", 5000, bw)
max.create_painting("exit", 250, ar)
max.create_painting("entrance", 467, gal)
angie.create_painting("study in red", 1000, bw)
angie.create_painting("study in rad", 1010, gal)
angie.create_painting("study in ted", 1100, ar)

binding.pry

puts "Bob Ross rules."
