class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        @@all << self 
    end

    def artist_name
        artist.name if artist
    end 

end
