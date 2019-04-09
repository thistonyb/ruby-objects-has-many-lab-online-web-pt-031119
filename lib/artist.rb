require 'pry'
class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) #Taking in song object
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name) #Taking in song name or title
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
