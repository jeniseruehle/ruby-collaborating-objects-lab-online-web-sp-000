class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
   @name = name
   self.class.all << self
   @songs = []
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    @songs
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def self.find_or_create_by_name(artist_name)
    
    
  end 
  
end