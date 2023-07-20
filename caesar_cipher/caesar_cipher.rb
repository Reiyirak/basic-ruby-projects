# frozen_string_literal: true

def cipher(string, shift)
  alphabet = [*('a'..'z')]
  old_string = string.split('')
  p old_string
  p alphabet
end

cipher('hello', 5)
