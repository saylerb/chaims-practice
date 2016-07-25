class Artist < OpenStruct

  def self.service
    @@service ||= ArtistService.new
  end

  def self.all
    all_artists_data = service.get_artists

    all_artists_data.map do |artist_data|
      Artist.new(artist_data)
    end
  end
end
