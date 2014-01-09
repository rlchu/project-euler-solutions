#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!

#require "prime.rb"


class Integer

	def factors() (1..self-1).select { |n| (self % n).zero? } end

	def sumfact() self.factors.reduce(:+) end

	def is_abundant()  self.sumfact > self end

end


abundants =  (2..20161).select {|x| x.is_abundant}



i = 0
sums = []
abundants.each do |x|
	abundants[i..abundants.length].each do |y|
		sum = x + y
		sums << sum unless sum > 20161
	end
	i += 1
end
sums.uniq!

#p (1..28123).reject {|x| sums.include? x}.reduce(:+)
p ([*1..20161] - sums).reduce(:+)




