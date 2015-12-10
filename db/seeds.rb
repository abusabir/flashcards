# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "open-uri"
doc = Nokogiri::HTML(open("http://4flaga.ru/d_1_1000.html"))
doc.css(".newsgr a").each do |node|
  card = Card.new
  card.original_text = node.inner_text.strip
  card.translated_text = node.next_sibling.inner_text.delete("-").strip
  card.save
end
