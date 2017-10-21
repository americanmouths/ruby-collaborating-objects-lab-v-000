class Song
  attr_accessor :artist, :name, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = Song.new(file_name)
    new_instance.title = file_name.split(" - ")[1]
  end

end
