class Pascal
	def self.print_triangle
		k = 1
		for i in 0...4
			(i..4).to_a.each {print " "}

			for val in 0..i
				if (val == 0 || i == 0)
					k = 1;
				else
					k = k * (i -val +1)/val;
				end
				print(" #{k}")
			end
			puts ""
		end
	end
end

Pascal.print_triangle
