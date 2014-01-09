//These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
/* to be run in Node */




var fs = require('fs');
var array = fs.readFileSync('words.txt').toString().split(",");
var count = 0;
var word_sum = 0;

var tri_nums_list = [];

for (i=0 ; i<100 ; i++) {
	tri_nums_list.push ( 0.5 * i * (i+1)) ;
}


for (i=0; i< array.length; i++) {

	for(j=1; j < array[i].length-1; j++) {
	    	word_sum += ( array[i][j].charCodeAt()-64 );
	
	    }

	if (tri_nums_list.indexOf( word_sum ) > -1)
		{
			count++;
		}

	word_sum = 0;
}



console.log(count + " words in the list are 'triangle words' ");
