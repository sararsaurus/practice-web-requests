#create new frontend.rb page!!!
#https://github.com/actualize-daytime-2022-09/practice-web-requests/blob/main/frontend.rb

require "http"
system "clear"
puts "Welcome to Bad Crafts! We offer kind of bad homemade amigurumi"
puts "Choose a product:"
puts "[1] Tiny Hippo"
puts "[2] Sleepy Dragon"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/first_product")
  product = response.parse(:json)
  pp product
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/second_product")
  product = response.parse(:json)
  pp product
end
