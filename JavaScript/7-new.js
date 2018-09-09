'use strict';

const sum = new Function('a, b', 'return a + b');

console.dir({
  name: sum.name,
  length: sum.length,
  toString: sum.toString()
});/* { name: 'anonymous',
        length: 2,
        toString: 'function anonymous(a, b\n) {\nreturn a + b\n}' }*/
