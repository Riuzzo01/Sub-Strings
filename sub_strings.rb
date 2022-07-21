def sub_strings(phrase, substrings)
  phraseArray =  phrase.downcase.split(" ")
  puts (substrings.reduce(Hash.new(0)) do |substringHash, value|
    phraseArray.each do |word|
      if word.include?(value)
        substringHash[value] += 1
      end
    end
    substringHash
  end)
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings("Howdy partner, sit down! How's it going?", dictionary)
