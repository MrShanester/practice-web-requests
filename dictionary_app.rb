require "http"

system "clear"

puts "Enter a word to see its definition"
word = gets.chomp.downcase

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=o1tp029o4artgjis1rok72b3rxsv17su5kxnpee3fu4egy2ma")

info = response.parse(:json)
part = info[0]["partofspeech"]
definition = info[1]["definition"]

puts "#{word}: #{part}. Definition: #{definition}"

puts "Thank you for using our dictionary."
