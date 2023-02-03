def stock_picker(prices)
    ans = [0, 0]
    mini = prices[0]
    min_ind = 0
    max_profit = 0
    prices.each_with_index do |price, ind|
        # puts price, ind
        if(price - mini >= max_profit)
            ans[0] = min_ind
            ans[1] = ind
            max_profit = price - mini
        end
        if(price < mini)
            mini = price
            min_ind = ind
        end
        # mini = price < mini ? price : mini
    end
    return ans
end

# puts stock_picker([17,3,6,9,15,8,6,1,10])