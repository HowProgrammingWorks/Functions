'use strict';

const methods = iface => {
  const collection = [];

  for (const key in iface) {
    collection.push([
      iface[key].name,
      iface[key].length
    ]);
  }

  return collection;
};

module.exports = { methods };
