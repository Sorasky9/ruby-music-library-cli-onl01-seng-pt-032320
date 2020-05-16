require 'pry'
class Song

  attr_accessor :name, :artist, :genre

@@all = []
def initialize(name, artist = nil, genre = nil)
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

def self.destroy_all
@@all.clear
end

def save
@@all << self #here, just like the initialize method above, is the same way we  save
end

def self.create(name)
self.new(name).save #We create a new Song class and save it
self #we call the new Song class
end

def artist=(artist) #instance method with an attribute (artist)
@artist = artist
artist.add_song(self) #when we call self on an instance method it refers to the current instance of that class.
end

end
