def substrings(word, dictionary)
    word.downcase!
    result = {}
  
    dictionary.each do |substring|
      next unless word.include?(substring.downcase)
  
      result[substring] ||= 0
      result[substring] += 1
    end
  
    result
  end
  
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)