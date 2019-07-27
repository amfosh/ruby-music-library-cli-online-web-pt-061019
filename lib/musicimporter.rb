class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(self.path).each {|filename| Song.new_from_filename(filename)}
  end
end
