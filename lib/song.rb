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
    
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    
    song
  end 
  
end 