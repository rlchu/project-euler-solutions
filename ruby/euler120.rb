#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
#http://projecteuler.net/problem=120

def square_remainder(a,n)
 	((a-1)**n +(a+1)**n)% (a**2)
end

def find_r_max (a)
	r_max = 0
	((1..(a*2)).step(2).to_a).each { |n|
		if (square_remainder(a,n) > r_max)  
			r_max = square_remainder(a,n)
		end
	}
	r_max
end

array = []

[*3..1000].each { |a| 
	array << find_r_max(a)
}

puts "Answer is #{array.inject(:+)}"