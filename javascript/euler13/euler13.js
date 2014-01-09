
//These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!



var fs = require('fs');
var array = fs.readFileSync('numbers.txt').toString().split("\n");


var sum = 0;
for(i in array){
    sum += parseInt(array[i]);
}


console.log("First 10 digits of the sum of all numbers is "
	 + sum.toString().slice(0,11).replace('.','') );

/* ran in Node */