'use strict';

function inc(a) {
  return a + 1;
}

const sum = function(a, b) {
  return a + b;
};

const max = (a, b) => (a > b ? a : b);

const avg = (a, b) => {
  const s = sum(a, b);
  return s / 2;
};

console.log('inc(5) = ' + inc(5)); // inc(5) = 6
console.log('sum(1, 3) = ' + sum(1, 3)); // sum(1, 3) = 4
console.log('max(8, 6) = ' + max(8, 6)); // max(8, 6) = 8
console.log('avg(8, 6) = ' + avg(8, 6)); // avg(8, 6) = 7
