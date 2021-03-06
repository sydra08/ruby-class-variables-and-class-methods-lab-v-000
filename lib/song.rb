#GOALS
#1 - create song class
#2 - each song has a name, genre, and artists
#3 - keep track of each song that is created (class variable)
#4 - generate list of the artists with songs (class array with unique values)
#5 - generate list of genres (class array with unique values)
#6 - generate hash with the number of songs per genre
#7 - generate hash with number of songs per artist

# first attempt 6/20/17
# class Song
#   attr_accessor :name, :artist, :genre
#   @@count = 0
#   @@artists = []
#   @@genres = []
#
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count += 1
#     @@artists << artist
#     @@genres << genre
#   end
#
#   def self.count
#     @@count
#   end
#
#   def self.genre_count
#     genre_histogram = {}
#     @@genres.each do |g|
#       if genre_histogram.has_key?(g)
#         genre_histogram[g] += 1
#       else
#         genre_histogram[g] = 1
#       end
#     end
#     genre_histogram
#   end
#
#   def self.artist_count
#     artist_histogram = {}
#     @@artists.each do |a|
#       if artist_histogram.has_key?(a)
#        artist_histogram[a] += 1
#       else
#         artist_histogram[a] = 1
#       end
#     end
#     artist_histogram
#   end
#
#
#   def self.genres
#     #genres_unique = []
#     #@@genres.each {|g| genres_unique << g if !genres_unique.include?(g)}
#     #genres_unique
#     @@genres.uniq
#   end
#
#   def self.artists
#     #artists_unique = []
#     #@@artists.each {|a| artists_unique << a if !artists_unique.include?(a)}
#     #artists_unique
#     @@artists.uniq
#   end
#
# end

# second attempt 7/3/17
class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
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
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
