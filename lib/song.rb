class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instanc = Song.new(file_name)
  end

end
