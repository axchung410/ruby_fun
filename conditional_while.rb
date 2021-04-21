# display all odd number up to input
#
puts("Please enter a number, this programs output all the odd number from 0 up to the input")
n = gets.chomp.to_i
x = 0

while x <= n
  if x.odd?
    puts x
  end
  x +=1
end
