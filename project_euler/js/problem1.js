function sumMultiples(n) {
  var multiSum = 0;
  for (var i = 0; i < n; i++) {
    if (i % 3 === 0) {
      multiSum += i;
    } else if (i % 5 === 0) {
      multiSum += i;
    }
  }
  return multiSum
};
