







class Song
 attr_accessor :name, :artist, :genre
 
   @@count = 0
   @@artists = []
   @@genres = []
   
 def initialize(name, artist, genre)
   @@count += 1
   @name = name
   @artist = artist
   @@artists<< artist
   @genre = genre
   @@genres<< genre
 end
  
  def self.count
    @@count
  end
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
    
 def self.genre_count
   genre_count = {}
 @@genres.each do |genre|
    if genre_count[genre]
       genre_count[genre] += 1
   else
        genre_count[genre] = 1
    end
  end
  
   
  def self.artist_count
   artist_count = {}
 @@artists.each do |genre|
    if artist_count[genre]
       artist_count[genre] += 1
   else
        artist_count[genre] = 1
    end
  end
  
  
  

  
end
end
end
