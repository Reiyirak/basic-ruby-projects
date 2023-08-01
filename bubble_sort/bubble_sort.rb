# frozen_string_literal: true

def bubble_sort(numbers)
  # Validation, numbers is an array of integers
  return p false unless numbers.is_a?(Array) && numbers.all? { |number| number.is_a?(Integer) }

  # Placeholder
  change = true

  while change == true
    change = false
    numbers.each_with_index do |number, index|
      break if index == numbers.length - 1

      if numbers[index] > numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
        change = true
      end
    end
  end

  p numbers
end

numbers = [4, 3, 78, 2, 0, 2]
bubble_sort(numbers)
