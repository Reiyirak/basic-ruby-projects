# frozen_string_literal: true

def stock_picker(stocks)
  # Validate if the parameter is an Array of integer numbers
  return puts 'Must be an array of integers' unless stocks.is_a?(Array) && stocks.all? { |price| price.is_a?(Integer) }

  buy_sell_days = Array.new(2, 0)
  gains = 0
  min_price = stocks[0]
  min_day = 0

  stocks.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
      next
    end

    if price - min_price > gains
      gains = price - min_price
      buy_sell_days[0] = min_day
      buy_sell_days[1] = day
    end
  end

  buy_sell_days
end

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(stocks)
