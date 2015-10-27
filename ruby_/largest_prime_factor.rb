# The prime factors of 13195 are 5, 7, 13, and 29.
#   What is the largest prime factor of the number 600851475143?
def largest_prime_factor
  number = 600851475143
  n = 2
  while n < number
    if number % n == 0
      factor = number / n
      return factor if is_prime?(factor)
    end
    n += 1
  end
end

def is_prime?(number)
  max_factor = (number / 2.0).ceil
  2.upto(max_factor) do |i|
    return false if number % i == 0
  end
  true
end

puts largest_prime_factor
