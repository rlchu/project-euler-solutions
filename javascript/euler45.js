//These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
/* to be run in Node */


var flag = false;
var i = 407;
var temp; 



function hex_check (num) {

	if ( (( (Math.sqrt(1+(8*num) ) )+1)/4) % 1  == 0 ){
	 	return true;
	 }
	 else {
	 	return false;
	 }


};



function tri_check (num) {

	 if ( (Math.sqrt(1+(8*num))) % 1  == 0 ){
	 	return true;
	 }
	 else {
	 	return false;
	 }

};


while(flag == false)
{
	temp = (i * (3*i - 1) /2);
	if ( tri_check(temp) && hex_check(temp))
	{
		console.log("The next triangle number that is also pent and hex is " + temp);
		break;
	}
	i++;
	

}




