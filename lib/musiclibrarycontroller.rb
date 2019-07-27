class MusicLibraryController
  attr_reader :path, :importer

  def initialize(path = './db/mp3s')
    @path = path
  end
end
