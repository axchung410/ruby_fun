friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
    end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

invited_list_select = friends.select { |friend| friend != 'Brian' }
p invited_list_select

invited_list_reject = friends.reject { |friend| friend == 'Brian' }
p invited_list_reject

friends.each { |friend| puts "Hello, " + friend }

friends.each_with_index { |friend, index| puts friend + " is at index " + index.to_s }

upcase_friends = friends.map { |friend| friend.upcase }
p upcase_friends

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
p my_order

extra_large_order =  my_order.map { |item| item.gsub('medium', 'extra large') }
p extra_large_order

my_numbers = [5, 6, 7, 8]
p my_numbers 
p my_numbers.reduce { |sum, number| sum + number } #sum is the accumulator
