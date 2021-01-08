'use strict';

const methods = iface => Object
  .keys(iface)
  .reduce((acc, key) => {
    if (typeof iface[key] === 'function') {
      acc.push([iface[key].name, iface[key].length]);
    }
    return acc;
  }, []);

module.exports = { methods };
