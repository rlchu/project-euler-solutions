#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factori (n)
	[*1..n].inject (1) { |sum, x| x * sum}

end



def sum_digits (n)
	a = n.to_s
	total = 0

	while ( a != "")
		total = a.slice!(0).to_i + total
		p a
	end

	total


end


p sum_digits (factori 100)