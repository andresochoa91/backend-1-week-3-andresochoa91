def print_full_name
  puts "This program will close if mandatory fields are not filled out"
  full_name = [];
  puts
  print "Please enter your first name (mandatory): ";
  first_name = gets.chomp
  if first_name == ""
    puts "Invalid input"
    puts
    return
  end 
  
  full_name.push(first_name)
  
  print "Please enter your middle name (not mandatory): ";
  middle_name = gets.chomp
  if middle_name != ""
    full_name.push(middle_name)
  end 

  print "Please enter your last name (mandatory): ";
  last_name = gets.chomp
  if last_name == ""
    puts "Invalid input"
    puts
    return
  end

  full_name.push(last_name)
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
end
print_full_name