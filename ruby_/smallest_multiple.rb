# 2520 is the smallest number that can be divided by each of the numbers from
#   1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
#   numbers from 1 to 20?


def lcm(*args)
  reduce_factors(args)
  until args.length == 1
    a = args.pop
    b = args.pop
    foo = (a * b) / gcd(a,b)
    args << foo
  end
  puts args.first
end

def reduce_factors(factors)
  factors = factors.uniq.sort.reverse
  cutoff = (factors[0] / 2).floor
  until factors[-1] >= cutoff
    factors.pop
  end
  factors
end

def gcd(*nums)
  rem = nums.sort![1] % nums.first
  if rem == 0
    nums.first
  else
    gcd(nums.first, rem)
  end
end

lcm 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
