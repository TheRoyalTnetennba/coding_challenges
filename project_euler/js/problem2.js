function evenFibSum(n) {
  var a = 2;
  var fibSum = 0;
  if (n > 1) {
    fibSum += 2;
  }
  var i = 3;
  while (i <= n) {
    if (i % 2 === 0) {
      fibSum += i;
    }
    var b = a
    a = i
    i += b
  }
  console.log(fibSum);
}
