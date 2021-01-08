'use strict';

const ipToInt = (ip = '127.0.0.1') => ip
  .split('.')
  .reverse()
  .reduce((acc, n, i) => acc + (n << (8 * i++)), 0);

module.exports = { ipToInt };
