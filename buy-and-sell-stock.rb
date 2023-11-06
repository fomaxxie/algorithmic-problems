def max_profit(prices)
  return 0 if prices.empty?
  
  profits = []

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if buy_day < sell_day
        profit = prices[sell_price] - prices[buy_price]
        profits << profit
      end
    end
  end

  profits.max > 0 ? profits.max : 0
end


puts "give a list of numbers"
prices = gets.chomp.split.map{ |s| s.to_i }

puts "The max profit is #{max_profit(prices)}"

# 7, 1, 5, 3, 6, 4
