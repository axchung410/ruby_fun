#convert input string to upper case

string = gets.chomp

def upper(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts upper(string)
