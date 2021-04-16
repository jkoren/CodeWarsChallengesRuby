# bit_counting.rb
# run this with "ruby bit_counting.rb"

# require 'test_helper'

# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

def to_binary(x)
  return x.to_s(2)
end

def count_bits(y)
  y_binary_text = to_binary(y)
  one_bits = 0
  y_binary_text.each_char do | letter |
    if letter == "1"
      one_bits += 1
    end
  end
  return one_bits
end

puts count_bits(1234)

# after submitting, found this best practice:
# def count_bits(n)
  n.to_s(2).count "1"
end