'use strict';

// ES6 style for default parameter values
//
function fnNew(a, b = 'Hello', c = 5) {
  console.dir({ a, b, c });
}

fnNew(1, 2, 3); // { a: 1, b: 2, c: 3 }
fnNew(1, 2); // { a: 1, b: 2, c: 5 }
fnNew(1); // { a: 1, b: 'Hello', c: 5 }
fnNew(); // { a: undefined, b: 'Hello', c: 5}

// Old style for default parameter values
//
function fnOld(a, b, c) {
  b = b || 'Hello';
  c = c || 5;
  console.dir({ a, b, c });
}

fnOld(1, 2, 3); // { a: 1, b: 2, c: 3 }
fnOld(1, 2); // { a: 1, b: 2, c: 5 }
fnOld(1); // { a: 1, b: 'Hello', c: 5 }
fnOld(); // { a: undefined, b: 'Hello', c: 5}

// Hash style for default parameter values
//
function fnHash(args) {
  args.a = args.a || [7, 25, 10];
  args.b = args.b || 'Hello';
  args.c = args.c || 100;
  console.dir(args);
}

fnHash({ a: [1, 2, 3], b: 'Hi', c: 3 }); // { a: [ 1, 2, 3 ], b: 'Hi', c: 3 }
fnHash({ b: 'World' }); // { b: 'World', a: [7, 25, 10], c: 100 }
fnHash({ c: 7 }); // { c: 7, a: [ 7, 25, 10 ], b: 'Hello'}
