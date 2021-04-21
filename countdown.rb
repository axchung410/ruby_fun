# count down from X
#
#
#
puts "Please enter a number"
input = gets.chomp.to_i

def countdown(x)
  puts x
  if x == 0
    x
  else
    countdown(x - 1)
  end
end

countdown(input)
