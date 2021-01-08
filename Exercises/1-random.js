'use strict';

const random = (max, min = 0) => {
  min = min < 0 ? 0 : min;
  const random = Math.random() * (max - min) + min;
  return Math.floor(random);
};

module.exports = { random };
