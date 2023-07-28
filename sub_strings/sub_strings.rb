# frozen_string_literal: true

def args_validation(args)
  # Return false if there's not at least 2 arguments(the string and the array)
  return false if args.length < 2

  # Return false if the last argument is not an Array
  last_argument = args.last
  return false unless last_argument.is_a?(Array) && last_argument.all? { |item| item.is_a?(String) }

  # Return true if all the arguments except the last one are Strings
  args[0...-1].all? { |item| item.is_a?(String) }
end

def substrings(*args)
  validation = args_validation(args)
  unless validation
    return puts "
      The last argument must be an Array of strings and all the other arguments\n
      must be strings
    "
  end

  return puts 'good job'
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
