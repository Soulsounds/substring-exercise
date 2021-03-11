dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  lowered_string = string.downcase

  dictionary.each do |word|
    matches = lowered_string.scan(word).length
    result[word] = matches unless matches == 0
end

return result
end 

puts substrings("Hey sir, how is it going over there?", dictionary)