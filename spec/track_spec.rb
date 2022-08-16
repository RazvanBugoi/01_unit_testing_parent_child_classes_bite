require 'track'

RSpec.describe Track do
    it "returns true if the keyword matches either the title or artist" do
        track = Track.new("title", "artist")
        expect(track.matches?("title")).to eq true
    end
    it "returns false if the keyword matches neither the title or artist" do
        track = Track.new("title", "artist")
        expect(track.matches?("song")).to eq false
    end
end