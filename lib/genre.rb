class Genre
  attr_accessor :name
  
  @@all = []

  def initialize(name)
      @name = name
      @@all << self 
  end

  #def add_song(song)
   #   @@all << song
  #end
  
  def songs 
    Song.all { |song| song.genre == self}
  end 

  def self.all 
      @@all 
  end

  def artists
      self.songs.map { |song| song.artist }
  end
end