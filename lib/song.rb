class Song
    attr_accessor :name, :artist, :genre
  
    # Class variables
    @@count = 0
    @@genres = []
    @@artists = []
  
    # Constructor
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end
  
    # Class methods
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
      genre_hash = {}
      @@genres.each do |genre|
        if genre_hash[genre]
          genre_hash[genre] += 1
        else
          genre_hash[genre] = 1
        end
      end
      genre_hash
    end
  
    def self.artist_count
      artist_hash = {}
      @@artists.each do |artist|
        if artist_hash[artist]
          artist_hash[artist] += 1
        else
          artist_hash[artist] = 1
        end
      end
      artist_hash
    end
  end
  
  # Create some songs
  song1 = Song.new("99 Problems", "Jay-Z", "rap")
  song2 = Song.new("Crazy in Love", "Beyonce", "pop")
  song3 = Song.new("In My Feelings", "Drake", "rap")
  song4 = Song.new("Umbrella", "Rihanna", "pop")
  song5 = Song.new("God's Plan", "Drake", "rap")
  song6 = Song.new("Formation", "Beyonce", "pop")
  song7 = Song.new("Big Pimpin'", "Jay-Z", "rap")
  
  # Test the class methods:

  puts Song.count
  # Output: 7
  
  puts Song.genres
  # Output: ["rap", "pop"]
  
  puts Song.artists
  # Output: ["Jay-Z", "Beyonce", "Drake", "Rihanna"]
  
  puts Song.genre_count
  # Output: {"rap"=>3, "pop"=>3,}
  
  puts Song.artist_count
  # Output: {"Jay-Z"=>2, "Beyonce"=>2, "Drake"=>2, "Rihanna"=>1}
  