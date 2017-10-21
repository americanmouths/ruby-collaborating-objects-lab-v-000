class Song
  attr_accessor :artist, :name, :title, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = file_name.split(" - ")[1]
    song = self.new(new_instance)
    song = song.artist_name=(new_instance)
    song
  end

  def artist_name=(name)
    name = Artist.find_or_create_by_name(name)
  end

end
