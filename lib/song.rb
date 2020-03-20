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
    song = self.new 
    song_name = filename.split(" - ")[1]
    song.artist_name = filename.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(name)
    song
  end 
  
end 