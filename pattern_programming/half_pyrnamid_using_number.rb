# Program to print Half Pyramid using Number
class HalfPyramidUsingNumber
	def self.print_pyramid
		for i in 0..4
			(0..i).each {|val| print "#{val + 1} "}
			puts ""
		end
	end
end

HalfPyramidUsingNumber.print_pyramid

class HalfPyramidUsingAlphabets
	ALPHABETS = ('A'..'Z').to_a
	def self.print_pyramid
		for i in 0..4
			(0..i).each {print "#{ALPHABETS[i]}  "}
			puts ""
		end
	end
end

HalfPyramidUsingAlphabets.print_pyramid