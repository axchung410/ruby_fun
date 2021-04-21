def caesar_cipher(string, shift)
  new_string = ""
  string.each_char { |char| 
    new_string += ((char.ord + shift).chr)
  }
  p new_string
end

caesar_cipher("Hello", 1)
caesar_cipher("Hello", -1)
