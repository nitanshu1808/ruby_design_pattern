class Nik
	attr_accessor :mouse

	def initialize
		@mouse = "mouse"
		puts "Hello World #{self}"
	end

end

class Pik < Nik
	def initialize
		super()
	end
end


p = Pik.new