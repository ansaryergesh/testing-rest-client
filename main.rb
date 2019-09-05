# frozen_string_literal: true

require 'rest-client'

puts 'Enter something to search: '
search_val = gets.chomp
resources = RestClient.get 'https://www.bing.com/search', params: { q: search_val }

puts 'Status: '
puts resources.code
puts '-------------'
puts 'Headers: '
puts resources.headers
puts '-------------'
puts 'Cookies: '
puts resources.cookies
puts '-------------'
puts 'Body: '
puts resources.body
