class Song

    attr_accessor :name, :artist, :genre, :count, :artists, :genres
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name =name
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
        @@artists.uniq!
      end

      def self.genres
        @@genres.uniq
      end

      def self.genre_count
        @@genre_count.default = 0
        @@genres.each {|genre| @@genre_count[genre] +=1}
        @@genre_count
      end

      def self.artist_count
        @@artist_count.default = 0
        @@artists.each { |artist| @@artist_count[artist] +=1}
        @@artists.each {|x| "#{x} : #{@@artist_count[x]}" }
        @@artist_count
      end
      

end 