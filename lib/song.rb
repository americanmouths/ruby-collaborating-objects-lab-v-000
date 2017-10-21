class Song
  attr_accessor :artist, :name, :title, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = file_name.split(" - ")[1]
    song = self.new(new_instance)
    artist = Artist.find_or_create_by_name(name)
    song.artist = self
    artist.add_song(song)
  end

end
