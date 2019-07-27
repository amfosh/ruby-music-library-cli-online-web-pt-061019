class MusicLibraryController
  attr_reader :path, :importer

  def initialize(path = './db/mp3s')
    MusicImporter.new(path).import
  end
end
