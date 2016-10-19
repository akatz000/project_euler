# The sum of the squares of the first ten natural numbers is,
#   1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers
# and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural
# numbers and the square of the sum.

def sum_square_difference(max_num: 100)
  diff = 0
  num_set = (1..max_num).to_a.reverse
  set_sum = num_set.inject(:+)
  until num_set.length == 1
    foo = num_set.pop
    set_sum -= foo
    diff += 2 * foo * set_sum
  end
  puts diff
end

sum_square_difference
