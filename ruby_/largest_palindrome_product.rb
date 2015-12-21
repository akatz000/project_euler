# A palindromic number reads the same both ways. The largest palindrome made
#   from the product of two 2-digit numbers is 9009 = 91 x 99
#   Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(max_factor, min_factor)
  max_num = max_factor ** 2
  min_num = min_factor ** 2
  max_num.downto(min_num) do |num|
    if is_palindrome?(num) && has_three_digit_factors?(num, min_factor, max_factor)
      puts "FOUND ONE!"
      puts num
      return num
    end
  end
end

def is_palindrome?(number)
  reversed_number = number.to_s.reverse.to_i
  if reversed_number == number
    true
  else
    false
  end
end

def has_three_digit_factors?(number, min_factor, max_factor)
  min_factor.upto(max_factor) do |factor|
    if number % factor == 0 && number / factor >= min_factor && number / factor <= max_factor
      return true
      puts "success"
    end
  end
  false
end

largest_palindrome_product(999,100)
