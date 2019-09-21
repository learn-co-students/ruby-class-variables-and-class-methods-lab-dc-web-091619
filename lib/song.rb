require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@names = []
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count += 1
       @@genres = @@genres << genre
       @@names = @@names << name
       @@artists = @@artists << artist
    end
    def self.count
        @@count
    end
    def self.artists
       unique_artists = @@artists.uniq!
    end
  
    def self.genres
        unique_genres = @@genres.uniq!
    end
    def self.names
        @@name
    end

    def self.genre_count
        count = 0
       genre_count = {}
        @@genres.each do |genre|

       if genre_count.include?(genre) 
        genre_count[genre] += 1
       else genre_count[genre] = 1
    end
end
    genre_count
end

def self.artist_count
    artist_count = {}
        @@artists.each do |artist|

       if artist_count.include?(artist) 
        artist_count[artist] += 1
       else artist_count[artist] = 1
    end
end
    artist_count
end

end