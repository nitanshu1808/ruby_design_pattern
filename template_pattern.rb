class Design
	def shape
		starting_point
		ending_point
	end

	def starting_point
		raise 'Starting Point method called in the parent'
	end

	def ending_point
		raise 'Starting Point method called in the parent'
	end 
end


class Circle < Design
	def starting_point
		puts "Hello World I am free"
	end

	# def ending_point
	# 	puts "Hello I am in ending point"
	# end
end


p = Circle.new
p.shape