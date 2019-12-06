







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
  
  def self.genre_count
  genre_count = {}
  @@genres.uniq each do |genre|
    if genre_count[genre]
        genre_count[genre] =+ 1
    else
        genre_count[genre] = 1
      end
    end
  

  

end
