class Song
  attr_accessor :artist, :name, :title, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = file_name.split(" - ")[1]
    self.new(new_instance).artist_name = self
    new_instance
  end

end
