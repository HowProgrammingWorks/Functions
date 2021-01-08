'use strict';


const generateKey = (length, possible) => {
  let res = '';
  const randomIdx = n => Math.floor(Math.random() * n);

  for (let i = 0; i < length; i += 1) {
    res += possible[randomIdx(possible.length)];
  }

  return res;
};


module.exports = { generateKey };
