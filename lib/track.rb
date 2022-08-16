class Track
    def initialize(title, artist)
        @title = title
        @artist = artist
    end
  
    def matches?(keyword)
        @title.match(keyword) || @artist.match(keyword) ? true : false
    end
end