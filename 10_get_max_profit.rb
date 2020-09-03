def get_max_profit(stock_prices)

    # Calculate the max profit.
    if stock_prices.length < 2
      raise ArgumentError, 'Getting a profit requires at least 2 prices'
    end
    low_price = stock_prices[0]
    max_profit = stock_prices[1] - stock_prices[0]
    
    stock_prices.each_with_index do |stock_price, index|
      
      next if index.zero? #this is how to skip the first c
      
      profit = stock_price - low_price
  
      max_profit = [max_profit, profit].max  
      
      low_price = [low_price, stock_price].min
  
    end
  
    max_profit
  end
  
  