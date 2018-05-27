#Program to print full pyramid
class FullPyramid
	def self.print_pyramid
		(0..4).to_a.reverse.each_with_index do |item, index|
			#loop for printing spaces
			(1..item).each {print " "}
			#loop for print *
			(1..(2*index+1)).each {print "*"}
			#New Line
			puts ""
		end
	end
end

FullPyramid.print_pyramid
