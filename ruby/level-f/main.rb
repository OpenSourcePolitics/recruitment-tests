# class Test
#   def rot13(string)

string = 'Ada Lovelace'
string.downcase!

substitution = {
  'a' => 'n',
  'b' => 'o',
  'c' => 'p',
  'd' => 'q',
  'e' => 'r',
  'f' => 's',
  'g' => 't',
  'h' => 'u',
  'i' => 'v',
  'j' => 'w',
  'k' => 'x',
  'l' => 'y',
  'm' => 'z',
  'n' => 'a',
  'o' => 'b',
  'p' => 'c',
  'q' => 'd',
  'r' => 'e',
  's' => 'f',
  't' => 'g',
  'u' => 'h',
  'v' => 'i',
  'w' => 'j',
  'x' => 'k',
  'y' => 'l',
  'z' => 'm'
}

convert_string = string.gsub(/\w/,substitution)

final_name = convert_string.gsub(/\S+/) {|word| word.capitalize}
# keep in mind this other syntax :
# final_name = convert_string.gsub(/\S+/, &:capitalize)

print final_name

