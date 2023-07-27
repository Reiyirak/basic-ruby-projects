# frozen_string_literal: true

def cipher(string, shift)
  old_string = string.split('')
  new_string = do_encyption(old_string, shift)
  new_string.join
end

# The way i can explain the solution is:
# If the character on the string is a letter from the alphabet in lowercase
# or upercase then a value will be asigned to the variable start, that value
# is the ASCII decimal code for the start of the Uppercase alphabet or the start
# for the lowercase alphabet, that depends on the ASCII decimal code of the char
# that we are currently iterating on. After that we do some mathematical process
# so we can get the new character after the shift.
# The % 26 is because the alphabet has 26 letters.
# With the new value we obtain the character with the method chr and we push it
# to the array
# Otherwise just take the character and push it to an array.
# When the iteration over all the string that the user gave us is over
# and all the new values are on the array, we will return that array where the cipher
# method will join the characters of the array to create a string
#
def do_encyption(string_array, shift)
  new_string = []
  string_array.each do |char|
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      start = char.ord < 91 ? 65 : 97
      new_char = (((char.ord - start) + shift) % 26) + start
      new_string.push(new_char.chr)
    else
      new_string.push(char)
    end
  end
  new_string
end

puts 'What is the word you want to encrypt?'
word = gets.chomp
puts 'What is the shift factor?'
shift = gets.chomp.to_i
encrypted_word = cipher(word, shift)
puts "\nThe new encrypted word is #{encrypted_word}"
