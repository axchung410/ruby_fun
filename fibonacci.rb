# Returns the fibonacci sequence of a number
#
def fibonacci(number)
  puts number
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(3)
