require 'rest-client'

resources = RestClient.get 'https://www.bing.com/search', {params: {'Ruby'}}
begin
puts resources.code
puts -------------
puts resources.headers
puts -------------
puts resources.cookies
puts -------------
puts resources.body


puts RestClient::Request.execute(method: :get, url: 'https://www.bing.com/search',
  timeout: 10)