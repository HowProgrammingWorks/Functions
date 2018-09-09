'use strict';

const cities = ['Athens', 'Roma', 'London', 'Beijing', 'Kiev', 'Riga'];
const f = s => s.length;

function f1() {
  const cities = ['Athens', 'Roma'];
  const f = s => s.toUpperCase();
  console.dir({ cities });
  console.dir(cities.map(f));

  {
    const f = s => s.toLowerCase();
    console.dir({ cities });
    console.dir(cities.map(f));
  }

  {
    const cities = ['London', 'Beijing', 'Kiev'];
    console.dir({ cities });
    console.dir(cities.map(f));
  }

}

f1();/* { cities: [ 'Athens', 'Roma' ] }
        [ 'ATHENS', 'ROMA' ]
        { cities: [ 'Athens', 'Roma' ] }
        [ 'athens', 'roma' ]
        { cities:  [ 'London', 'Beijing', 'Kiev' ] }
        [ 'LONDON', 'BEIJING', 'KIEV' ]*/

console.dir({ cities }); // { cities:  ['Athens', 'Roma', 'London', 'Beijing', 'Kiev', 'Riga'] }
console.dir(cities.map(f)); // [ 6, 4, 6, 7, 4, 4]
