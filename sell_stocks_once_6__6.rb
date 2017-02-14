require 'json'

def max_profit(stock_prices)
  return 'should be more than 2 elements' if stock_prices.length < 2
  min_price  = stock_prices.first
  max_profit = 0

  (1...stock_prices.length).each do |index|
    current_price = stock_prices[index]
    profit        = current_price - min_price
    max_profit    = [profit, max_profit].max
    min_price     = [current_price, min_price].min
  end

  max_profit
end

stock_prices = ARGV[0]

begin
  stock_prices = JSON.parse(stock_prices)
rescue
  puts 'not a valid array'
  exit
end

puts max_profit(stock_prices)