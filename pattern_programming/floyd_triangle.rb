class Floyd
	def self.print_triangle
		counter = 1
		for i in (0..4)
			for j in (0..i)
				print"#{counter}    "
				counter += 1
			end
			puts ""
		end
	end
end

Floyd.print_triangle