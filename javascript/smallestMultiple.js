// 2520 is the smallest number that can be divided by each of the numbers from
//   1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the
//   numbers from 1 to 20?

function smallestMultiple(maxFactor) {
  minFoo = findPrimes(maxFactor).reduce(addNums, 0);
  multiples: for (var i = minFoo;;i += minFoo) {
    console.log(i);
    for (var j = maxFactor - 1;j > 1;j--) {
      if (i % j != 0) {
        continue multiples;
      }
    }
    console.log(i);
    return i;
  }
}

function findPrimes(maxNum) {
  console.log('hi');
  var primes = [];
  number: for (var i = maxNum;i > 0;i--) {
    var sqrt = Math.floor(Math.sqrt(i));
    for (var j = 2;j <= sqrt;j++) {
      if (i % j == 0) {
        continue number;
      }
    }
    primes.push(i);
  }
  console.log('bye');
  return primes;
}

function addNums(a, b) {
  console.log('hi');
  return a + b;
}

smallestMultiple(20);
