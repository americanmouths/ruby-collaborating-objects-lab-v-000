class Artist
  attr_accessor :name
  @@all

  def initialize(name)
    @name = name
    songs = []
  end

  def self.save
   @all < self.artist
 end

end
