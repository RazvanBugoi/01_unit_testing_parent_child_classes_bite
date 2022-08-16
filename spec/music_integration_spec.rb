require 'music_library'
require 'track'

RSpec.describe 'MusicLibraryIntegration' do
    it "adds tracks to the library and returns a list of all track objects" do
        library = MusicLibrary.new
        track_1 = Track.new('title_1', 'artist_1')
        track_2 = Track.new('title_2', 'artist_2')
        library.add(track_1)
        library.add(track_2)
        expect(library.all).to eq [track_1, track_2]
    end

    it "searches tracks by title" do
        library = MusicLibrary.new
        track_1 = Track.new('one two', 'three four')
        track_2 = Track.new('five six', 'seven eight')
        library.add(track_1)
        library.add(track_2)
        expect(library.search("two")).to eq [track_1]
    end
end