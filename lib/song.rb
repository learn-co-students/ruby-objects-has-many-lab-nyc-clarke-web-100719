class Song

    attr_reader :name, :artist


    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def artist=(artist)
        @artist = artist

        artist.songs << self 
        Artist.incSongs
    end   

    def artist_name
        if self.has_artist? 
            return self.artist.name
        else
            return nil
        end

    end

    def has_artist?
        return @artist!=nil
    end



    def self.all
        @@all
    end



end
