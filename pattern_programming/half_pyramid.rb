#Program to print Half Pyramid
class HalfPyrnamid
	def self.print_half_pyramid
		for i in 0..4
			(0..i).each {print "* "}
			puts ""
		end
	end
end

HalfPyrnamid.print_half_pyramid
