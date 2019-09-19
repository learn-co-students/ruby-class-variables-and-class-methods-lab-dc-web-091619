require "pry"
class Song

    attr_reader :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count+=1
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @genre_histo={}
        @@genres.each do |genre|
            if @genre_histo[genre]
                @genre_histo[genre]+=1
            else
                @genre_histo[genre]=1
            
            end
        end
        @genre_histo
    end

    def self.artist_count
        @artist_histo={}
        @@artists.each do |artist|
            if @artist_histo[artist]
                @artist_histo[artist]+=1
            else
                @artist_histo[artist]=1
            end
        end
        @artist_histo
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end
end