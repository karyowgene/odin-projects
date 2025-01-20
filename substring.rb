def sub_string(string, dictionary)
  # Convert the string to lowercase and remove special characters
  cleaned_string = string.downcase.gsub(/[^a-z\s]/i, '')

  # Split the string into an array of words
  words = cleaned_string.split

  # Initialize a hash to store found strings and their counts
  found_strings = Hash.new(0)

  # Check if each word is found in the dictionary and store it in the hash
  words.each do |word|
    dictionary.each do |dict_word|
      if word.include?(dict_word)
        found_strings[dict_word] += 1
      end
    end
  end

  # Return the hash
  found_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_string("how did it go DOWN!", dictionary)
puts sub_string("how Did it Go dowN!, it's crazy, just sit", dictionary)
