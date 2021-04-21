#!/usr/bin/env ruby

def stock_picker(array)
  price_to_buy = 9999999 #setup variables
  price_to_sell = -1
  buy_index = 0          
  sell_index = array.length() - 1

  #Traverse through array
  #if buy price is lower than current buy price and is before the sell day, then set that to be current buy day
  #if sell price is higher than current sell price, and is after the buy day, then set that to be current sell day
  #This should also catch cases in which first day is highest or last day is lowest due to our default values
  for i in array
    if (i < price_to_buy && array.find_index(i) < sell_index)
      price_to_buy = i
      buy_index = array.find_index(i)
    elsif (i > price_to_sell && array.find_index(i) > buy_index)
      price_to_sell = i
      sell_index = array.find_index(i)
    end
  end

  return [buy_index, sell_index]
end

stocks = [1,2,3,4]
stocks2 = [17,3,6,9,15,8,6,5,10,1]
p stocks
p stock_picker(stocks)

p stocks2
p stock_picker(stocks2)
