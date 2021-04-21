#test user input

puts 'Please enter a number between 0 and 100';
n = gets.chomp.to_i

def test_num(n)
  if (n > 0 && n <= 50)
    return "#{n} is between 0 and 50";
  elsif (n > 50 &&  n <= 100)
    return "#{n} is between 51 and 100";
  elsif (n > 100)
    return "#{n} is greater than 100";
  else
    return 'Please enter a number a number between 0 and 100'
  end
end

puts test_num(n)

