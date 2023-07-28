# frozen_string_literal: true

def substrings(*args)
  args.each { |arg| p arg }
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
