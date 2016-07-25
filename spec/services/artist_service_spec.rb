require 'rails_helper'

describe ArtistService do
  it "returns a list of Artists" do
    VCR.use_cassette("artists") do
      artists = ArtistService.new.artists
      artist = artists.first

      expect(artist[:id]).to eq(3)
      expect(artist[:name]).to eq("Kip Moore")
    end
  end
end
