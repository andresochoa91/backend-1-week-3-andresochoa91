isBlank = false
words = []

loop do
  puts "To add a new word, enter your word, to stop the program, leave it blank"
  word = gets.chomp
  if word != ""
    words << word
  else
    isBlank = true
    break
  end
end

puts "Sorted words:\n\n"
puts words.sort
puts