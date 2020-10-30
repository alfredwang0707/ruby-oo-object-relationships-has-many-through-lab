class Artist
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all 
    end
    
    def songs
        Song.all.select{|song|song.artist == self }
    #select all artist of the same from song.all array
    end

    def genres
        songs.map(&:genre)
    end
    

  
    
    def new_song(name,genre)
        Song.new(name,self,genre)
    end


end
