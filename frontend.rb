require "http"

system "clear"

puts "Choose an option:"
puts "[1] Random Fortune"
puts "[2] Lotto Numbers"
puts "[3] Bottles of beer"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/random_fortune.json")
  fortune = response.parse["message"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/random_numbers.json")
  lotto_numbers = response.parse["message"]
  p lotto_numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/bottles_of_beer.json")
  lyrics = response.parse["message"]
  p lyrics
end
