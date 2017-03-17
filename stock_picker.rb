#!/usr/bin/env ruby

# Takes an array of stock prices
# and returns the days which would net the most profit

def stock_picker(stocks)
  best_days = [] # [0] = buy, [1] = sell
  best_profits = []
  stocks.each_with_index do |stock, index|
    best_buy = stocks[0..index].min
    best_sell = stocks[index...stocks.size].max
    profit = best_sell - best_buy
    best_profits << profit
    buyable = best_sell - stock > 0 && best_sell - stock == best_profits.max
    sellable = stock - best_buy > 0 && stock - best_buy == best_profits.max
    first_stock = index == 0
    last_stock = index == stocks.size - 1
    if buyable && !last_stock
      best_days[0] = index
    elsif sellable && !first_stock
      best_days[1] = index
    end
  end
  return best_days
end

stocks = []

ARGV.each do |arg|
  stocks << arg.to_i
end

results = stock_picker(stocks)

$stdout.puts "Buy on day #{results[0] + 1} and sell on day #{results[1] + 1} for a profit of $#{stocks[results[1]] - stocks[results[0]]}"