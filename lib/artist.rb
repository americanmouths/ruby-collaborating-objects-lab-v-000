class Artist
  attr_accessor :name, :song, :title
  @@all

  def initialize(name)
    @name = name
    songs = []
  end

  def self.save
   @all < self.artist
 end

 def songs
   @songs
 end

end
