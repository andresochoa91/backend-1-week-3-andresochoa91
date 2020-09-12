puts "\nThis program calculates the leap years in a desired range"
puts "Starting year must be positive"
puts "Ending year must be greater than starting year"
puts "If entering invalid input, the program will automatically close.\n\n"

def validation_leap_year(s_year)
  (s_year % 4 == 0 && s_year % 100 != 0) || s_year % 400 == 0 
end

def counter_of_leap_years(year1, year2)
  if year1 > year2 
    return
  end    
  if validation_leap_year(year1)
    puts year1
  end
  counter_of_leap_years(year1 + 4, year2)
end

def validation_input(year)
  print "Enter #{year} year: "  
  c_year = gets.chomp
  
  if c_year.to_i < 0 || c_year.match(/^\d{0,}$/) == nil
    puts "\nInvalid input\n\n"
    return
  else
    return c_year.to_i
  end 
end

def calculate_leap_years
  s_year = validation_input("starting")
  return if !s_year 

  e_year = validation_input("ending")
  return if !e_year

  if s_year > e_year
    puts "\nEnding year shouldn't be greater than or equal to starting year.\n\n"
    return
  end
    
  if !(validation_leap_year(s_year))
    loop do 
      s_year += 1
      if validation_leap_year(s_year)
        break
      end
    end
  end

  counter_of_leap_years(s_year, e_year)

end
calculate_leap_years






