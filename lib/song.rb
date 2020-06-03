require 'pry'
class Song

  attr_accessor :name, :artist, :genre

@@all = []
def initialize(name, artist = nil, genre = nil) #<-- The artist and genre = nil is setting an optional argument.
@name = name
if artist != nil
  self.artist = artist
  #This if statement here is saying if the artist is NOT nil, then artist has a name and self.artist is assigning the song to it's
  #associated artist (song that belongs to the artist.)
  end
@@all << self # Here we self instance object and we are saving it on the @@all varialbe that once had an empty array (line 5)
if genre != nil
  self.genre = genre
  #This is saying if genre is not set to nil, then assign the genre to the song that belongs to it.
end

end

def self.all
  @@all
end
#^This method above is calling the instances inside the @@all class variable


def self.destroy_all
@@all.clear
end
#^ This methid is deleting/clearing @@all class variable

def save
@@all << self #here, just like the initialize method above, is the same way we  save
end
#^ This method is saving the empty array of the class variable @@all.

def self.create(name)
self.new(name).save #We create a new Song class and save it
self #we call the new Song class
end

def artist=(artist) #instance method with an attribute (artist)
@artist = artist
artist.add_song(self) #when we call self on an instance method it refers to the current instance of that class.
end

def genre=(genre)
@genre = genre
genre.songs << self unless genre.songs.include? self
end

def self.find_by_name(name)
all.index(2)

#binding.pry

end
end
