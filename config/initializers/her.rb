Her::API.setup url: "https://api.spacexdata.com/v4" do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.adapter Faraday::Adapter::NetHttp
end
