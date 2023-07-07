def stock_picker(stock_arr)
    index_arr = []
    min_index = -1
    max_index = -1
    max_profit = 0
    i = 0
    while i < stock_arr.length do
        curr_stock = stock_arr[i]
        j = i + 1
        while j < stock_arr.length do
            next_stock = stock_arr[j]
            if next_stock - curr_stock > max_profit
                min_index = i
                max_index = j
                max_profit = next_stock - curr_stock
            end
            j += 1
        end
        i += 1
    end
    return [min_index , max_index]
end

print stock_picker([22,3,6])