require "http"

while true
  system "clear"
  puts "Now time for fun with words! "
  puts "Enter a word: "
  word = gets.chomp.downcase

  response1 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?&&exampleslimit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API KEY")

  response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=API KEY")

  response3 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=API KEY")

  definition = response1.parse(:json)[1]["text"]
  example = response2.parse(:json)["text"]
  pronounce = response3.parse(:json)[0]["raw"]

  puts "The definition of #{word} is '#{definition.chop.downcase}', an example of its usage is '#{example.chop.downcase}', and the pronunciation is #{pronounce}!"

  puts "Enter 'q' to quit or any other key to continue"
  input = gets.chomp
  if input.downcase == "q"
    puts "Goodbye!"
    break
  end
end
