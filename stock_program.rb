#!/bin/ruby

=begin
Suppose we could access yesterday's stock prices as a list, where:

The indices are the time in minutes past trade opening time, which was 9:30am local time.
The values are the price in dollars of Apple stock at that time.
So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

For example:

  stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

get_max_profit(stock_prices_yesterday)
# returns 6 (buying for $5 and selling for $11)

Gotchas
It is not sufficient to simply take the difference between the highest price and the lowest price, because the highest price may come before the lowest price. You must buy before you sell.

What if the stock value goes down all day? In that case, the best profit will be negative.


=end

def bestonetradeprofit(prices)
  # find highest difference between price and subsequent price
  # starting best is second - first
  max = prices[1] - prices[0]
  while prices.length > 1
    e = prices.shift
    prices.each {|v| 
      if (v - e) > max 
        max=(v-e)
      end
    }
  end
  return max
end

def moreefficient(prices)
  min=prices[0]
  max=prices[1] - prices[0]

  prices.each {|i|
    min = i < min ? i : min
    max = (i - min) > max ? (i - min) : max
  }

  return max
end

def with_shorting(prices)
  # look for the biggest difference
  # keep min and max
  minv, maxv = prices[0], prices[0]
  maxdiff = 0
  prices.each {|p|
    if p < minv
      diff = maxv - p
      minv = p
    elsif p > maxv
      diff = p - minv
      maxv = p
    else
      next
    end
    maxdiff = diff > maxdiff ? diff : maxdiff
  }
  return maxdiff
end

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
puts "looping through each: " + bestonetradeprofit(stock_prices_yesterday).to_s
stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
puts "tracking minimum: " + moreefficient(stock_prices_yesterday).to_s
stock_prices_yesterday = [10, 7, 5, 8, 11, 9, 1]
puts "including_shorting: " + with_shorting(stock_prices_yesterday).to_s
stock_prices_yesterday = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1]
puts "including_shorting: " + with_shorting(stock_prices_yesterday).to_s


