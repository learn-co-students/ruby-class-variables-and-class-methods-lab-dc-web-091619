require "pry"
class Song
    attr_reader :name, :artist, :genre
    
    @@count = 0
    @@artists = []      #empty array to hold the artists
    @@genres = []       #empty array to hold the genres

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        
        @@count = @@count + 1
        @@artists << artist     #pushes every artist that was created in the instance into the @@artists array
        @@genres << genre      #pushes every genre that was created in the instance into the @@genres array 
    end

    def self.count 
        @@count 
    end

    def self.artists
        @@artists = @@artists.uniq      #the uniq method makes sure that all the elements in the array are unique, no duplicates
    end

    def self.genres 
        @@genres = @@genres.uniq   #uniq method called again on the array to get rid of all the duplicates 
    end

    def self.genre_count
        #get array of the genres
        #create new hash where will be adding the count values and genre values
        #use each method and go through the genres. It will add 1 for everytime it comes across the same name
        genre_array = @@genres
        song_genre_amt = Hash.new(0)
        genre_array.each {|genre| song_genre_amt[genre] += 1 }

        #makes sure to return the new hash
        song_genre_amt
    end

    def self.artist_count
        #get array of the artists
        #create the new hash where we will be adding the count vaules and artists 
        #use each method to go through array of artist and add 1 for every time the artist comes up
        artist_array = @@artists
        song_artist_amt = Hash.new(0)
        artist_array.each {|artist| song_artist_amt[artist] += 1}
        
        #return the new hash created
        song_artist_amt
    end

end
