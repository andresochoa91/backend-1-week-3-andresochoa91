full_name = [];

puts
print "Please enter your first name: ";
full_name.push(gets.chomp)
print "Please enter your middle name: ";
full_name.push(gets.chomp)
print "Please enter your last name: ";
full_name.push(gets.chomp)
puts
print "Hello "
full_name.each_with_index do |name, index|
  print name
  if index != full_name.length - 1
    print " "
  else
    print ", Welcome!"
  end
end
puts