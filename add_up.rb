# (3) Write a program with a function add_up(i) . It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum. Call the function three times within the program, and each time print out the return value. Call the program add_up.rb.
 
puts "This program will add all the numbers from 1 to the number you enter."
puts "This process will repeat 3 times.\n\n"

def add_up(number)
  if number < 1
    return number
  end
  acc = number + add_up(number - 1)
  return acc
end

(0..2).each do |i|
  arr = ["first", "second", "third"]
  print "Enter your #{arr[i]} number: "
  num = gets.chomp("Enter number").to_i
  puts "#{arr[i]}: #{add_up(num)}\n\n"
end