//These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
/* to be run in Node */


var answers = [];

function digit_sum (num){
	if (num < 10) return num;
	return (num % 10) + digit_sum( Math.floor(num/10) );}

function sortNumber(a,b)
{
  return a - b;
}

for (base = 2; base < 205891132094649; base ++) {
	for (exp = 2; exp < 15; exp++) {
		if( base == digit_sum( Math.pow(base,exp) )){
			answers.push (  Math.pow(base,exp) );
		}
	}
	
	if (answers.length > 31) {break;}
}

console.log( "Our answer (A_30) would have to be: " + answers.sort(sortNumber)[28]); 