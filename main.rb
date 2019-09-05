require 'rest-client'

resources = RestClient.get 'https://www.bing.com/search', {params: {'Ruby'}}

puts resources.code
puts -------------
puts resources.headers
puts -------------
puts resources.cookies
puts -------------
puts resources.body

