'use strict';

const power = Math.pow;
const square = x => power(x, 2);
const cube = x => power(x, 3);

console.log(power(10, 2)); // 100
console.log(square(10)); // 100

console.log(power(10, 3)); // 1000
console.log(cube(10)); // 1000
