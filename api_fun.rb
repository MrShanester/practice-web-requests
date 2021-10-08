require "http"

system "clear"

puts "Enter a word to see its definition"
word = gets.chomp.downcase

response = HTTP.get("o1tp029o4artgjis1rok72b3rxsv17su5kxnpee3fu4egy2ma")

info = response.parse(:json)
part = info[0][""]
