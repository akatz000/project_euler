function largestPrimeFactor() {
  var number = 600851475143;
  var n = 2;
  while (n < number) {
    if (number % n == 0) {
      factor = number / n;
      if (isPrime(factor)) {
        return factor;
      }
    }
    n += 1;
  }
}

function isPrime(number) {
  var maxFactor = Math.ceil((number / 2.0));
  for (var i = 2;i < maxFactor; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

console.log(largestPrimeFactor());
