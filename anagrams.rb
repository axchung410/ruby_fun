# Check if a word is anagram
#
def is_anagram(word1, word2)
  word1.each_char { |c|
    return false unless word2.include?(c)
  } 
  return true
end

def check_array(arr)
  puts "input array is #{arr}"
  arr.each do |word|
    #puts word
    temp = Array.new()
    temp.push(word)
    arr2 = arr
    arr2.each do |word2|
      if(is_anagram(word, word2))
        temp.push(arr.delete(word2))
        #p temp
      end
    end
    p temp
  end
end

words =  ['aiii', 'aai', 'demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
                    'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                              'flow', 'neon']


def solution(array)
  result = {}

  array.each do |word|
    key = word.split('').sort.join
    puts "Current key is #{key}"
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end
  
  result.each_value do |v|
    puts "------"
    p v
  end
end

solution(words)
