def substrings(str, dict)
    lowercase_str = str.downcase
    str_arr = lowercase_str.split
    response_hash = Hash.new
    str_arr.each do |sub_str|
        dict.each do |word|
            if sub_str.include?(word)
                current_count = response_hash[word]
                response_hash[word] = response_hash[word] ? response_hash[word] + 1 : 1
            end
        end 
    end
    return response_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "First round"
puts substrings("below", dictionary)
puts "Second round"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)