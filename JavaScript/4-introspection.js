'use strict';

function inc(a) {
  return ++a;
}

const sum = function(a, b) {
  return a + b;
};

const max = (a, b) => (a > b ? a : b);

console.log('Names: ');
console.dir({
  inc: inc.name,
  sum: sum.name,
  max: max.name,
});/*Names:
    { inc: 'inc', sum: 'sum', max: 'max'}*/

console.log('Arguments: ');
console.dir({
  inc: inc.length,
  sum: sum.length,
  max: max.length
});/*Arguments:
    { inc: 1, sum: 2, max: 2}*/

console.log('Anonymous function: ' + function(x) { return x; }.name); //... + no output
console.log('Anonymous lambda: ' + (x => x).name); //... + no output

console.log('toString: ');
console.dir({
  inc: inc.toString(),
  sum: sum.toString(),
  max: max.toString()
});/*toString:
    { inc: 'function inc(a) {\n return ++a;\n}',
      sum: 'function (a, b) {\n return a + b;\n}',
      inc: '(a, b) => (a > b ? a : b)' }*/
