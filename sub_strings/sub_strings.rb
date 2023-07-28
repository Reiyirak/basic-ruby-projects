# frozen_string_literal: true

def args_validation(words, dictionary)
  # Return false if the last argument is not an Array
  return false unless dictionary.is_a?(Array) && dictionary.all? { |item| item.is_a?(String) }

  # Return true if all the arguments except the last one are Strings
  return false unless words.is_a?(String)
end

def substrings(words, dictionary)
  validation = args_validation(words, dictionary)
  return puts 'Make sure to give the appropiate arguments' unless validation
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
