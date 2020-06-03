require 'pry'
class Artist
attr_accessor :name


@@all = []
def initialize(name)
  #binding.pry
  @name = name
  @@all << self
  @songs = []
end

def self.all
@@all
end

def self.destroy_all
@@all.clear
end

def save
@@all << self
end

def self.create(name)
self.new(name).save
self
end

def songs
@songs #<- This songs instance has an empty array
end

def add_song(song) #<- The song in the argument is the song given
  #binding.pry
if song.artist != self #<- If song that belongs to artist is not the Artist; in other words, is not self
  song.artist = self #<- We make the song's artist belong to the Artist (self)

  #binding.pry
end
if !@songs.include?(song) #<- If the songs array does not have the song given (song in the argument)
  @songs << song #<- We add the song given to the songs instance that has an array.

end
end

def genres
  #binding.pry
Song.all.select {|song| song.artist == self}.map{|song| song.genre}.uniq
#^ We iterate the songs in the Song class through the use of select enumerable & pick any song that matches the song.artist condition.
# ^^ Then we grab that song and put it in an array using .map. From there, while the song is in the array, we retun it with
# the genre it is associated to.
#binding.pry
  end



end
