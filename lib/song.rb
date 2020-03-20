class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.class.all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.new_by_filename(filename)
     = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    artist_name.songs << song
    song
  end 
  
end 