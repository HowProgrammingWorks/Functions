'use strict';

const f1 = (...args) => {
  console.log(args);
};

f1(1, 2, 3); // [ 1, 2, 3 ]

const f2 = (...args) => {
  args.forEach(arg => {
    console.log('Type: ' + typeof arg);
    if (typeof arg === 'object') {
      console.log('Value: ' + JSON.stringify(arg));
    } else {
      console.log('Value: ' + arg);
    }
  });
};

f2(1, 'Marcus', { field: 'value' });/*Type: number
                                      Value: 1
                                      Type: string
                                      Value: Marcus
                                      Type: object
                                      Value: {"field":"value"}*/
