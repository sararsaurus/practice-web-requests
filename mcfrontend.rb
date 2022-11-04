#create new frontend.rb page!!!
#https://github.com/actualize-daytime-2022-09/practice-web-requests/blob/main/frontend.rb

require "http"
system "clear"
puts "Welcome to Bad Crafts! We offer questionable homemade amigurumi"
puts "Choose a product:"
puts "[1] Tiny Hippo"
puts "[2] Sleepy Dragon"
puts "[5] Bad Cat"
puts "[*] to view all products"
puts "Or type DESTROY to delete a product"

input_option = gets.chomp

if input_option == "1"
  response = HTTP.get("http://localhost:3000/products/1")
  product = response.parse(:json)
  pp product
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/products/2")
  product = response.parse(:json)
  pp product
elsif input_option == "5"
  response = HTTP.get("http://localhost:3000/products/5")
  product = response.parse(:json)
  pp product
elsif input_option == "*"
  response = HTTP.get("http://localhost:3000/products")
  product = response.parse(:json)
  pp product
elsif input_option == "destroy".downcase
  puts "Enter the ID of the product you'd like to delete: [1] Tiny Hippo, [2] Sleepy Dragon, [5] Bad Cat, [14] Chocolate cake"
  id = gets.chomp
  response = HTTP.delete("http://localhost:3000/products/#{id}")
  puts "DESTROYED!"
end
