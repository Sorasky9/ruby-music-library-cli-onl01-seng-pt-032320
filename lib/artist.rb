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
@songs
end

def add_song(song)
  #binding.pry
if song.artist
  song.artist

else
  song.artist = self
  @songs << song
  #binding.pry
end

end

end
