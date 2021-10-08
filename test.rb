require "http"

system "clear"

puts "Enter a word to see its etymology!"
word = gets.chomp.downcase

response = HTTP.get("https://word.json/#{word}/etymologies")

info = response.parse(:json)
