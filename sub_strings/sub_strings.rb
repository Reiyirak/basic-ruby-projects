# frozen_string_literal: true

def args_validation(words, dictionary)
  # Return false if the last argument is not an Array
  return false unless dictionary.is_a?(Array) && dictionary.all? { |item| item.is_a?(String) }

  # Return true if all the arguments except the last one are Strings
  return false unless words.is_a?(String)

  true
end

def substrings(words, dictionary)
  results = Hash.new(0)
  validation = args_validation(words, dictionary)
  return puts 'Make sure to give the appropiate arguments' unless validation

  # The case must be insensitive so we can just lowercase all the words
  new_words = words.downcase

  # Now we iterate each of the words inside the dictionary
  dictionary.each do |word|
    # We are gonig to use the method scan for each word we are iterating
    quantity = new_words.scan(word).length

    # With the quantity we are getting how many times a subtring in the dictionary
    # match the pattern of the string words
    # Now we need to add it to the results hash, with the key beign the iterated word
    # and the value will be the quantity
    results[word] = quantity unless quantity.zero?
  end

  # Finally we return the hash so that we can print it to the user
  results
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
