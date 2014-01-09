#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!
#http://projecteuler.net/problem=33

class Fraction
	def initialize (num, den)
		@num = num
		@den = den
	end

	def numerator 
		@num
	end

	def denominator
		@den
	end

	def print
		p @num.to_s + " / " +@den.to_s
	end

	def remove_shared_digit
		temp =  @num.to_s.split("") & @den.to_s.split("")
		temp_num =  @num.to_s.sub(temp[0].to_s, '')
		temp_den =  @den.to_s.sub(temp[0].to_s, '')

		
		if (temp_den.to_i != 0 && @den.to_i != 0)

			#self.print
			#p "and"
			#p Rational(temp_num.to_i, temp_den.to_i)
			#p temp_num.to_s + " / " + temp_den.to_s
			if ( Rational(@num, @den) == Rational(temp_num.to_i, temp_den.to_i) )
				self.print
			end
			
		end
		
	end

end


def check_for_shared_digit(num, den) 
	num.to_s.count(den.to_s)
end


array_of_rationals = []
reduced_array_of_rationals = []


(10..99).each {|num| 
	(num..99).each {|den|

	array_of_rationals << Fraction.new(num,den)


}}


array_of_rationals.uniq!

 array_of_rationals.each {|x|

 	if ( check_for_shared_digit(x.numerator,x.denominator) > 0 && x.numerator != x.denominator && (x.numerator % 10 !=0 && x.denominator % 10 != 0) )
		reduced_array_of_rationals << x
	end


}

reduced_array_of_rationals.each {|x| x.remove_shared_digit
}

#this program spits out the four needed fractions, multiplying them in IRB using ruby Rationals spits out the answer
