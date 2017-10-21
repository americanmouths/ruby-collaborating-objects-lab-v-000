class Artist
  attr_accessor :name, :song, :title
  @@all = []

  def initialize(name)
    @name = name
    songs = []
  end

  def self.save
   @all < self.artist
 end

 def songs
   songs << @songs 
 end

 def self.find_or_create_by_name(name)
   if (self.artist.nil?)
     self.artist = Artist.new(name)
   else
     self.artist.name = name

 def save
   @@all.save
 end

end
