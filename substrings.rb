#!/usr/bin/env ruby

def substrings(string, array)
  new_hash = Hash.new(0)

  string = string.downcase
  array.each do |word|
    if string.include?(word)
      new_hash[word] += string.scan(word).count
    end
  end

  return new_hash.select { |k, v| v > 0 }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
