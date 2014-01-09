//These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
/* to be run in Node */

var fs = require('fs');

var array = fs.readFileSync('names.txt').toString().split(",").sort();
var sum = 0,
	j; 

for(i in array){
    for(j=1; j < array[i].length-1; j++) {
    	sum += ( array[i][j].charCodeAt()-64 ) * ( parseInt(i)+1);
    }
}


console.log( "The total 'name score' is " + sum );