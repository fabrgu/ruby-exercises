def caesar_cipher(str, shift_factor)
    response_str = "";
    alphabet = ('a'..'z').to_a
    for i in 0.. str.length-1
        curr_char = str[i]
        alpha_index = alphabet.index(curr_char.downcase)
        if alpha_index
            new_index = (alpha_index + shift_factor) % alphabet.length
            new_char = alphabet[new_index]
            if curr_char == curr_char.upcase
                response_str += new_char.upcase
            else
                response_str += new_char
            end
        else
            response_str += curr_char
        end
    end
    return response_str
end

puts caesar_cipher("What a string!", 5)