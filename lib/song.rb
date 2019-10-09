class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name
       return self.artist.name if self.artist
       nil #Bug to remember - if Artist doesn't exist self.artist == nil, so self.artist.name == nil.name which is not a method on Nil class
    end
end

