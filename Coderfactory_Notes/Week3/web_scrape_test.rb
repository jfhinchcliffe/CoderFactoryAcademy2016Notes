require 'nokogiri'

require 'open-uri'
doc = Nokogiri::HTML(open("http://www.threescompany.com/"))

puts doc
