require_relative "./song.rb"

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end
    
    def songs
        Song.all.select do |song|  #call .all method on Song class and .select only songs whose artist matches the instance it was called on
            song.artist == self
        end
    end 

    def add_song_by_name(name)
        song = Song.new(name) #create new song with passed in name
        add_song(song)        #using add_song method associates the song to the artist'
    end

    def self.song_count
        Song.all.length
     end
    
end

# huh = Song.new("huh")
# yup = Song.new("yup")
# nick = Artist.new("Nick")
# nick.add_song(huh)
# nick.add_song(yup)
# p huh.artist.name

