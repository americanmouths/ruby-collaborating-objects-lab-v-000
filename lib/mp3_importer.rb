class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.uniq
 end

  def import(list_of_file_names)
    list_of_file_names = Dir.entries(@path)
    list_of_file_names.each{|filename|
    Song.new_by_filename(filename)}
  end

end
