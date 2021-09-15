# Ruby Caesar Cipher Project
require 'pry-byebug'

# functions takes two parameters => 1. string of words and 2. number to shift
def output(word, shift)
  # map each character in to ASCII key and subtract 97 to get (a-z => 0-25)
  parsed_word = word.downcase.bytes.map { |char| (char) - 97 }
  p parsed_word

=begin
  1. caesar ciphere formula => y = (X + K) %mod 26
  2. get the sum of charcter num (x) and number of shift (K)
  3. get shifted character num Y by modulo26 of (X + K)
  4. add by 97 to get ASCII key
  5. return new array by map
=end
  shifted_word = parsed_word.map { |int| ((int + shift) % 26) + 97 }

  # map each ASCII key to character in the array
  # return new array by map and join the characters in the array
  to_parsed_num = shifted_word.map { |char| (char.ord.chr) }
  to_parsed_num.join
end

p 'please enter a word you like to encrypt below: '
p word = gets.chomp.to_s
p 'please enter number for the shift below: '
p shift = gets.chomp.to_i
p 'your encryption is: '
p output(word, shift)
