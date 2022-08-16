require 'music_library'

RSpec.describe MusicLibrary do
    it "adds tracks instances to the library and returns a list of them" do
        library = MusicLibrary.new
        fake_track_1 = double :track
        fake_track_2 = double :track
        library.add(fake_track_1)
        library.add(fake_track_2)
        expect(library.all).to eq [fake_track_1, fake_track_2]
    end

    it "searches tracks that match" do
        library = MusicLibrary.new
        fake_track_1 = double :track
        expect(fake_track_1).to receive(:matches?).with("two").and_return(true)
        fake_track_2 = double :track
        expect(fake_track_2).to receive(:matches?).with("two").and_return(false)
        library.add(fake_track_1)
        library.add(fake_track_2)
        expect(library.search("two")).to eq [fake_track_1]
    end
end