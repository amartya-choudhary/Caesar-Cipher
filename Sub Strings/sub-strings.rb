def sub_strings(str, dict)
    ans = Hash.new(0)
    dict.each do |curr|
        if(str.include?curr)
            ans[curr] += 1
        end
    end
    return ans
end

puts sub_strings("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])