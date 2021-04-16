# bit_counting.rb
# run this with "ruby bit_counting.rb"
require 'test_helper'

# multiplesOf3or5.rb
def solution(number)
  sum = 0
  for i in 0..number-1
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  return sum
end
  
#best practice
# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end

#how to get test to work?
def test(actual, expected)
  Test.assert_equals(actual, expected)
end

Test.describe("example tests") do
  test(solution(10), 23)
  test(solution(20), 78)
  test(solution(200), 9168)
end