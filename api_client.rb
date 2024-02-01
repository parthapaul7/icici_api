require 'net/http'
require 'uri'
require 'json'

class APIClient
  def initialize(base_url)
    @base_url = base_url
  end

  def get(endpoint)
    uri = build_uri(endpoint)
    response = Net::HTTP.get_response(uri)
    handle_response(response)
  end

  def post(endpoint, body)
    uri = build_uri(endpoint)
    request = Net::HTTP::Post.new(uri)
    request.body = body.to_json
    request['Content-Type'] = 'application/json'
    
    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(request)
    end

    handle_response(response)
  end

  private

  def build_uri(endpoint)
    URI.join(@base_url, endpoint)
  end

  def handle_response(response)
    case response
    when Net::HTTPSuccess
      response
    else
      raise "API Request Failed. Response Code: #{response.code}, Response Body: #{response.body}"
    end
  end
end

