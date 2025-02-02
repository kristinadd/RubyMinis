class MaxProfit
  def max_profit(prices)
    min_price = Float::INFINITY
    max_profit = 0
  
    prices.each do |price|
      if price < min_price
        min_price = price
      else
        # Calculate the profit if we sold at the current price.
        profit = price - min_price
        # Update max_profit if this profit is greater.
        max_profit = profit if profit > max_profit
      end
    end
  
    max_profit
  end
  
  puts max_profit([7, 1, 5, 3, 6, 4])  # Expected output: 5
  puts max_profit([7, 6, 4, 3, 1])     # Expected output: 0  
end

