=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12


    get the difference of each value and choose greatest difference

    profits = []
    profits = {
                :profit1 => [value1, value4]
                }

    for price in list
        if first price
            skip
        else
            for i in list
                difference = price[i] - price
                profits[difference] = [price, price[i]]
    
    print profits

=end
def stock_picker(stock_prices)
    profits = {}

    stock_prices.each_with_index do |price, index|

        stock_prices.each_with_index do |curr_price, curr_index|
            next if index == 0
            next if curr_index < index

            difference = curr_price - price
            if profits.keys.none? { |profit| profit > difference} 
                profits[difference] = [price, curr_price]
            end
        end
    end

    [stock_prices.index(profits.max[1][0]), stock_prices.index(profits.max[1][1])]
end

p stock_picker([17,3,6,9,15,8,6,1,1])