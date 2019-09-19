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
        new_hash = {}
        @@genres.each{|genre|
            new_hash[genre] = 0}
        @@genres.each{|genre|
            new_hash[genre] += 1}
        new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each{|artist|
            new_hash[artist] = 0}
        @@artists.each{|artist|
            new_hash[artist] += 1}
        new_hash
    end
end
