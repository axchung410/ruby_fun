require 'pry'

def double_words_in_phrase(string)
  string_array = string.split(' ')

  string_array.map { |word| word * 2 }
  string_array.join(' ')
end

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSUP, #{name}"
  puts greeting
end

yell_greeting("bob")
