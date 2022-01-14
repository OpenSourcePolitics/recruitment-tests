string = 'Ada Lovelace'
string.downcase!

str_to_arr = string.chars


# building the subsitution hash
alphabet = ("a".."z").to_a

# as ("n".."m") doesn't work
new_order_beginning = ("n".."z").to_a
new_order_end = ("a".."m").to_a

new_order = [new_order_beginning, new_order_end].reduce([], :concat)

substitution = alphabet.zip(new_order).to_h


convert_string = string.gsub(/[a-z]/,substitution)

final_name = convert_string.gsub(/\S+/) {|word| word.capitalize}
print final_name