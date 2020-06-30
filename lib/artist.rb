class Artist

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song_by_name(song)
      song = Song.new(name)
      @posts << post
      song.artist = self
      @@song_count += 1
  end
end
