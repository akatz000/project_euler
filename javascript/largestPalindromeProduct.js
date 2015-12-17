// A palindromic number reads the same both ways. The largest palindrome made
//   from the product of two 2-digit numbers is 9009 = 91 x 99
//   Find the largest palindrome made from the product of two 3-digit numbers.

function largestPalindromeProduct() {
  var minProduct = 100 * 100;
  var maxProduct = 999 * 999;
  for (var i = maxProduct;i >= minProduct; i--) {
    if (isPalindrome(i) && hasThreeDigitFactors(i)) {
      console.log('FOUND ONE!');
      console.log(i);
      return i;
    }
  }
}

function isPalindrome(number) {
  var numReversed = number + '';
  numReversed = parseInt(numReversed.split('').reverse().join(''));
  if (numReversed == number) {
    return true;
  }
  else {
    return false;
  }
}

function hasThreeDigitFactors(number) {
  for (var i = 100; i <= 999; i++) {
    if (number % i == 0 && number / i >= 100 && number / i <= 999) {
      return true;
    }
  }
  return false;
}

largestPalindromeProduct();
