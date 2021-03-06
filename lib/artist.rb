class Artist

  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self #tell the song it belongs tothe artist
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
