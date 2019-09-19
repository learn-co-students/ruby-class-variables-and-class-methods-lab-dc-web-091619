require "pry"

class Song

    @@count = 0 
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        @@count += 1
        @@artists << self.artist 
        @@genres << self.genre 
    end

    def self.count
        @@count 
    end

    def self.artists
        @@artists.uniq{|artist| artist}
      
    end

    def self. genres
        @@genres.uniq{|genre| genre}
    end

    def self.genre_count
       g_c = {}
       @@genres.each do |genre| g_c.has_key?(genre) ? g_c[genre] += 1 : g_c[genre] = 1
    end
       g_c
    end

    def self.artist_count
        a_c = {}
        @@artists.each do |artist| a_c.has_key?(artist) ? a_c[artist] += 1 : a_c[artist] = 1
    end
        a_c
    end

end