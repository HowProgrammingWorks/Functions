'use strict';

const generateKey = (length, possible) => {
  let result = '';

  for (let i = 0; i < length; i++) {
    const ranIdx = Math.floor(Math.random() * possible.length);
    result += possible[ranIdx];
  }

  return result;
};

module.exports = { generateKey };
