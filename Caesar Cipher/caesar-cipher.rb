def caesar_cipher(text, k)
    res = ""
    uppercase = ("A".."Z").to_a
    lowercase = ("a".."z").to_a

    text.each_char do |c| 
        if uppercase.include? c
            res += uppercase[(uppercase.index(c) + k)%26]
        elsif lowercase.include? c
            res += lowercase[(lowercase.index(c) + k)%26]
        else
            res += c    
        end
    end
    return res
end
puts caesar_cipher("What a string!", 5)