# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
#   get 3, 5, and 9. The sum of these multiples is 23. Find the sum of all the
#   multiple of 3 or 5 below 1000.

def sum_multiples_3_5
  multiples = []
  0.upto(999) do |i|
    multiples << i if (i % 3 == 0) || (i % 5 == 0)
  end
  multiples.inject(:+)
end

puts sum_multiples_3_5
