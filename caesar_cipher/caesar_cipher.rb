# frozen_string_literal: true

def cipher(string, shift)
  old_string = string.split('')
  new_string = do_encyption(old_string, shift)
  new_string.join
end

def do_encyption(string_array, shift)
  new_string = []
  string_array.map do |char|
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      if char.ord == 90
        new_char = 65 + shift - 1
        new_string.push(new_char.chr)
      elsif char.ord == 122
        new_char = 97 + shift - 1
        new_string.push(new_char.chr)
      else
        new_char = char.ord + shift
        new_string.push(new_char.chr)
      end
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
