numbers = [5, 6, 7, 8, 21, 500, 420, 356]
element = 6
result = false

p numbers
p "Numbers include 6? " + numbers.include?(6).to_s

p "Numbers include 3? " + numbers.include?(3).to_s

p "Any numbers greater than 300? " + (numbers.any? { |number| number > 300 }).to_s

p "All numbers greater than 10? " + (numbers.all? { |number| number > 10 }).to_s

p "None of numbers are greater than 1000? " + (numbers.none? { |number| number > 1000}).to_s
