function fibonacci(n) {
  if (n == 1) {
    return 1;
  }
  else if (n == 2) {
    return 2;
  }
  else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

function evenFibonacciSum() {
  var n = 1;
  var sum = 0;
  while (fibonacci(n) < 4000000) {
    var number = fibonacci(n);
    if (number % 2 == 0) {
      sum += number;
    }
    n += 1;
  }
  return sum
}

console.log(evenFibonacciSum());
