'use strict';

const ipToInt = (ip = '127.0.0.1') => {
  const ipSplit = ip.split('.');
  return ipSplit.reduce((acc, val) => (acc << 8) + parseInt(val), 0);
};

module.exports = { ipToInt };
