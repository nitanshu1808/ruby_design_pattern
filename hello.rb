class Engine
	def start
		puts "ENgine Started yippy"
	end

	def stop
		puts "ENgine Stopped YOHO"
	end
end

class Car < Engine
	def sunday_drive
		start
		stop
	end
end

p = Car.new
p.sunday_drive

#WITHOUT INHERITANCE
#USING COMPOSITION
class Engine
	def start
		puts "Engine Started"
	end

	def stop
		puts "Engine Stopped"
	end
end

class Car
	def initialize
		@engine = Engine.new
	end

	def sunday_drive
		@engine.start
		@engine.stop
	end
end

p = Car.new
p.sunday_drive
