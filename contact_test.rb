require "http"

system "clear"

response = HTTP.get("http://localhost:3000/all_contacts")

info = response.parse(:json)

puts info