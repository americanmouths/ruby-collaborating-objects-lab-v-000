
class Artist
  attr_accessor :name, :song, :title

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
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
   @names.each do |s|
   if s.name.nil?
     s.name = Artist.new(name)
   else
     self.artist.name = name
   end
 end
 end

 def print_songs
   @songs.each{|s| puts s.name}
 end

end
