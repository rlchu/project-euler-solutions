#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!


def cyclefinder (denom) 

	a = 10 % denom
	i = 0
	arrayList = []


	while (i<1000)
		a = a * 10
		a = a % denom
		arrayList[a] = "X"
		i += 1
	end


	[arrayList.count("X"), denom]
end


 p [*1..1001].map{ |x| cyclefinder x}.max

 