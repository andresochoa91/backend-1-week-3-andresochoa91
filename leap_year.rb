puts "This program calculates the leap years in a desired range"
puts "Ending year must be greater than starting year"
puts "When entering invalid input, the program will automatically close."
puts
print "Enter starting year: "
s_year = gets.chomp.to_i
print "Enter ending year: "
e_year = gets.chomp.to_i
puts

def validationLeapYear(s_year)
  (s_year % 4 == 0 && s_year % 100 != 0) || s_year % 400 == 0 
end

def counterOfLeapYears(year1, year2, leap_years=[])
  if year1 > year2 
    return leap_years
  end
  
  if validationLeapYear(year1)
    leap_years << year1
  end

  counterOfLeapYears(year1 + 4, year2, leap_years)
end


if !(validationLeapYear(s_year))
  loop do 
    s_year += 1
    if validationLeapYear(s_year)
      break
    end
  end
end

puts "Leap years between #{s_year} and #{e_year}"
puts
puts counterOfLeapYears(s_year, e_year)
puts






