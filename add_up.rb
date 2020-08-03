puts "Enter a positive integer greater than or equal to 3. "
puts "Enter blank space to stop the program. "
puts 
int = gets.chomp.to_i
puts

if int >= 3 
  def add_up(number)
    if number < 1
      return number
    end
    acc = number + add_up(number - 1)
    puts acc
    return acc
  end
  add_up(int)  
end