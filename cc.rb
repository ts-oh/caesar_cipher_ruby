# functions takes two parameters => 1. string of words and 2. number to shift
def output(word, num)
  # split string to characters to a new array
  split_word_array = word.split('')

  # change characters to ASCII key and push to a new array
  ascii_array = []

  split_word_array.each do |c|
    c.ord
    ascii_array.push(c.ord)
  end

  # shift ASCII key and map to a new array
  shifted_ascii_array =
    ascii_array.map do |n|
      if n > 96 && n < 123
        (((n - 97) + num) % 26) + 97
      elsif n > 64 && n < 97
        (((n - 65) + num) % 26) + 65
      else
        n
      end
    end

  # map converted ASCII key to characters
  encrypt_word = shifted_ascii_array.map { |n| n.chr }

  # join characters in the array
  encrypt_word.join
end

# expected output => "Bmfy f xywnsl!"
p output('What a string!', 5)
