class Artist

    attr_accessor :name

    @@count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
    
        @songs << song
        song.artist = self
        
        
    end

    def add_song_by_name(songName)

        newSong = Song.new(songName)
        @songs << newSong
        newSong.artist = self
        
    
    end

    def self.incSongs
        @@count+=1
    end


    def self.song_count
        @@count
    end




end
