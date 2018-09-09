'use strict';

// Immediately-invoked function expression

(function f1() {
  console.log('f1'); // f1
})();

(function() {
  console.log('anonymous'); // anonymous
})();

(() => {
  console.log('lambda'); // lambda
})();

{
  console.log('block'); // block
}
