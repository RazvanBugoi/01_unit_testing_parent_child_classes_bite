class MusicLibrary
    def initialize
        @all_tracks = []
    end
  
    def add(track) 
        @all_tracks << track
    end
  
    def all
      return @all_tracks
    end
    
    def search(keyword)
        return @all_tracks.select do |element|
            element.matches?(keyword)
        end
    end
end