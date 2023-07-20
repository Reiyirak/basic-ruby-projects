# frozen_string_literal: true

def cipher(string, shift)
  alphabet = [*('a'..'z')]
  old_string = string.split('')
  new_string = do_encyption(alphabet, old_string, shift)
  new_string.join
end

def do_encyption(alphabet, string_array, shift)
  new_string = []
  string_array.map do |char|
    alphabet.each_with_index do |letter, index|
      if char == letter && char == char.upcase
        new_letter = alphabet[index + shift].upcase
        new_string.push(new_letter)
        break
      elsif char == letter
        new_letter = alphabet[index + shift]
        new_string.push(new_letter)
        break
      end
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
