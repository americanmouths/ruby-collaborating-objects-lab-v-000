class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_instance = self.new
    new_instance.title = file_name.split(" - ")[1]
    new_instance
  end

end
