class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).reject {|f| f == '.' || f == '..'}
  end

  def import
    files.each{ |file| Song.create_from_filename(file)}
  end
end
