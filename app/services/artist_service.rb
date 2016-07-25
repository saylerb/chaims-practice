class ArtistService
  def initialize 
    @_conn = Faraday.new(url: "http://my-chaimz.herokuapp.com") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["Authorization"] = "Bearer 35148ad62db32ff044d6df2cd57"
    end
  end

  def artists
    response = @_conn.get("/api/v1/artists.json")
    JSON.parse(response.body, symbolize_names: :true)
  end

  def artist(id)
    response = @_conn.get("/api/v1/artists/#{id}.json")
    JSON.parse(response.body, symbolize_names: :true)
  end

  private

  def conn
    @_conn
   end
end

