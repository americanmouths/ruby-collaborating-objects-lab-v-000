
class Artist
  attr_accessor :name, :song, :title

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_one)
    @songs << song_one
  end

  def self.all
    @@all
  end
  
  def save
   @@all << self
 end

 def songs
   @songs
 end

 def self.find_or_create_by_name(name)
   if (self.artist.nil?)
     self.name = Artist.new(name)
   else
     self.artist.name = name
   end
 end

 def print_songs
   @@all
 end

end
