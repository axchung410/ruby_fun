puts 'How old are you?'
age = gets.chomp.to_i
while age == 0
  puts 'Please enter a non-zero number'
  age = gets.chomp.to_i
end
for i in [10,20,30,40] do
  puts "In " + i.to_s + " years you will be:\n"
  puts age + i 
end

