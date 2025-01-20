# define a function that takes an arry of stock prices as input
# determine the best time to buy and sell for maximum profit
# return the days to buy and sell as an array, days start at 0 and should be wrapped around 30 days
def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day

      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day % 30, sell_day % 30]
      end
    end
  end

  best_days
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices).to_s