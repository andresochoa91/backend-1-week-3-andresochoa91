# (2) Write a program called sorted_words.rb. It should prompt the user for words and add each to an array. The user should be able to add as many words as they like, until they just hit enter to return a blank word. Then sort the array using the sort method and print it out.

is_blank = false
words = []

loop do
  puts "To add a new word, enter your word, to stop the program, leave it blank"
  word = gets.chomp
  if word != ""
    words << word
  else
    is_blank = true
    break
  end
end

puts "Sorted words:\n\n"
puts words.sort
puts