
require 'pry'
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
   @name.each do |s|
   if s.name.nil?
     s.name = Artist.new(s)
     binding.pry
   else
     s.name = name
   end
 end
 end

 def print_songs
   @songs.each{|s| puts s.name}
 end

end
