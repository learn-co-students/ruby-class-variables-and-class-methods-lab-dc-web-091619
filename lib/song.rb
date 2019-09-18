class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genres_filtered = []
    @@artists_filtered = []

    attr_accessor :artist, :name, :genre
    def initialize(name,artist,genre)
        @artist = artist
        @name = name
        @genre = genre

        @@genres.push(genre) 
        @@artists.push(artist) 

        @@genres_filtered.push(genre) unless @@genres_filtered.any?(genre)
        @@artists_filtered.push(artist) unless @@artists_filtered.any?(artist)

        @@count += 1
    end

    def self.count
    @@count
    end

    def self.artists
    @@artists_filtered
    end

    def self.genres
    @@genres_filtered
    end

    def self.genre_count
    Hash[@@genres.group_by(&:itself).map {|k,v| [k, v.size] }]
    end

    def self.artist_count
    Hash[@@artists.group_by(&:itself).map {|k,v| [k, v.size] }]
    end

end