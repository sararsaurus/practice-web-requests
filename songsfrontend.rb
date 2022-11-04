require "http"
system "clear"

puts "Select a song about Colorado!"
puts "[1] Colorado Girl"
puts "[4] Rocky Mountain High"
puts "[3] You Wild Colorado"
puts "[$] To add a song!"

input_option = gets.chomp

# BELOW IS NOT COMPLETE // how to create a .create request?

if input_option == "$"
  puts "Enter song title:"
  input_title = gets.chomp
  puts "Enter album:"
  input_album = gets.chomp
  puts "Enter artist:"
  input_artist = gets.chomp
  puts "Enter year:"
  input_year = gets.chomp

  response = HTTP.create("http://localhost:3000/songs")
end

song = Song.create(
  title: params[:title],
  album: params[:album],
  artist: params[:artist],
  year: params[:year],
)
