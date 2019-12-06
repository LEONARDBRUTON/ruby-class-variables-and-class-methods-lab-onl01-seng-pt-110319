







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
   genre_hash = hash.new(0)
   @@genres.each do |genre|
     genre_hash[genre] += 1
   end
   genre_hash
 end
   
  def self.artist_count
   artist_count = nartist_count{}
    @@artists.each do |artist|
    if artist_count[artist]
       artist_count[artist] += 1
    else
        artist_count[artist] = 1
    end
     artist_count
  end
  
 
  
end
end