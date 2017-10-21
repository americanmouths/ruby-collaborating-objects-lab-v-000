class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.uniq
    @files.delete(".")
    @files.delete("..")
    @files
 end

  def import
    @files = Dir.entries(@path)
    @files.uniq.delete(".").delete("..")
    @files.each{|mp3|
    song = Song.new_by_filename(file_name)}
  end

end
